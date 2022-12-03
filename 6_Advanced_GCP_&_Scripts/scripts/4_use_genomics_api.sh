#!/bin/bash

#   complete directions at https://cloud.google.com/genomics/quickstart

#   sign into your GCP account, enable billing and enable the Genomics API
#   run all commands from the GCP shell
gcloud auth login
#   --or---
gcloud init

#   get data
gsutil cp gs://genomics-public-data/platinum-genomes/vcf/NA1287*_S1.genome.vcf gs://my-genomics-bucket/platinum-genomes/vcf/

#   create variant sets
gcloud alpha genomics variantsets create --dataset-id 17971165971694843048 --name variant1
#   expected output on success, note id values
#   ----Created variant set [variant1, id: 13016206918134735038] belonging to dataset [id: 17971165971694843048].

#   import variants
gcloud alpha genomics variants import --variantset-id 13016206918134735038 --source-uris gs://my-genomics-bucket/platinum-genomes/vcf/*.vcf 
#   expected output, wait until 'true' is returned...
#   ----done: false --> true
#   ----name: operations/CIKetvzrGxDbk72_BRiawOPi0M6ZzK0B

#   list operations
gcloud alpha genomics operations describe operations/ CIKetvzrGxCXsL2_BRjqvfTC-vP18LMB
gcloud --format='value(done)' alpha genomics operations describe operations/CIKetvzrGxDWsL2_BRjRzeCSqvf1ulw

#   export results for analysis in Big Query
gcloud alpha genomics variantsets export 13016206918134735038  hellogenetable  --bigquery-dataset hellogene

#   compute ratio of transitions vs. transversions in SNPs in each 100k base pair window
#   use the pre-loaded dataset, or change the dataset name to the one you imported (hellogene)
  SELECT
  reference_name,
  window * 100000 AS window_start,
  transitions,
  transversions,
  transitions/transversions AS titv,
  num_variants_in_window,
  FROM (
  SELECT
    reference_name,
    window,
    SUM(mutation IN ('A->G', 'G->A', 'C->T', 'T->C')) AS transitions,
    SUM(mutation IN ('A->C', 'C->A', 'G->T', 'T->G',
                     'A->T', 'T->A', 'C->G', 'G->C')) AS transversions,
    COUNT(mutation) AS num_variants_in_window
    FROM (
      SELECT
        reference_name,
        reference_bases,
        alternate_bases,
        INTEGER(FLOOR(start / 100000)) AS window,
        CONCAT(reference_bases, CONCAT(STRING('->'), alternate_bases)) AS mutation,
        COUNT(alternate_bases) WITHIN RECORD AS num_alts,
      FROM
        [genomics-public-data:platinum_genomes.variants]
      WHERE
        # Limit to chromsome 1.
        # The reference for Platinum Genomes uses the "chr" prefix ("chr1") convention,
        # but this query will also handle references that use the numeric reference_name ("1") convention.
        reference_name IN ('1', 'chr1')
      HAVING
        # Limit to bi-allelic SNP variants
        num_alts = 1
        AND reference_bases IN ('A','C','G','T')
        AND alternate_bases IN ('A','C','G','T'))
  GROUP BY
    reference_name,
    window)
  ORDER BY
    window_start

