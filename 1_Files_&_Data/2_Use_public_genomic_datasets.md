# Use Public Reference Datasets

### Intro
- Google Cloud Genomics provides a variety of public datasets that you can access for free and integrate into your research jobs
    - An example is the 1000 Genomes dataset - [link](https://cloud.google.com/genomics/docs/public-datasets/1000-genomes)
    - Google hosts these datasets and proves public access to the data via as BigQuery datasets or Cloud Storage buckets.

### Why do this
 - USE a reference file in cloud-based analysis
 - SAVE time by using a reference file that is already available in the cloud (no need to upload)

### Key considerations
 - Google adds more reference files as they become available

### How to do this
 - Interactive access is available in the BigQuery console. You can explore variant calls in case/control & cohort analysis. There are sample queries to help you get started. [GO TO CLOUD GENOMICS DATASETS IN BIGQUERY](https://bigquery.cloud.google.com/project/genomics-public-data)

 - File access is available from Cloud Storage. Files are available in BAM, VCF, or FASTA formats. 
 - To access these public files, you can use a number of GCP services (such as Compute Engine VMs), or tools such as Terra.bio from The Broad or others.
    - Go to the [public REFERENCE Files](https://console.cloud.google.com/storage/genomics-public-data/) cloud storage bucket
    - Go to the [public ANNOTATION Files](https://console.cloud.google.com/storage/browser/gcs-public-data--genomics/human-variant-annotation) cloud storage bucket

### How to verify you've done it
 - REFERENCE the file in a BigQuery query or a VM-based analysis

### 📺 Click to see Lynn's 3 minute exploration of this section  
[![Public Reference Genomic Datasets on GCP](http://img.youtube.com/vi/4jfY9LmgHJk/0.jpg)](http://www.youtube.com/watch?v=4jfY9LmgHJk "Public Reference Genomic Datasets on GCP")

### Other Things to Know
 - 📘Learn about VCF file structure - [link](https://software.broadinstitute.org/gatk/documentation/article?id=11005)
  - :octocat: Learning how to work with VCF (Variant Call Format) files - [link](https://github.com/davetang/learning_vcf_file)
 - 📘 Poster about using VCF Files - [link](http://vcftools.sourceforge.net/VCF-poster.pdf)

### How to learn more
 - 📘 Link to [GCP Public Datasets](https://cloud.google.com/genomics/docs/public-datasets/) image shown below lists currently available datasets

 [![public-datasets](/images/public-datasets.png)](https://cloud.google.com/genomics/docs/public-datasets/)