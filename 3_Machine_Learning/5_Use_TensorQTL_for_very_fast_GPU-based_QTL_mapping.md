# USE TensorQTL for very fast GPU-based QTL mapping

### Why do this
 - ANALYZE structured data stored in tables via machine learning models
 - USE GCP to create the best-fit ML model for your data

### What is this
 - TensorQTL is a GPU-based QTL mapper, enabling ~200-300 fold faster cis- and trans-QTL mapping compared to CPU-based implementations
 - Use a number of different commands for processing


### Key considerations
 - USE three input files: genotypes, phenotypes, and covariates
 - Phenotypes must be provided in BED format (phenotypes x samples), and covariates as a text file (covariates x samples)

### How to do this
 - Install and Setup
 - Run
    - Example  
    `python3 -m tensorqtl ${plink_prefix_path} ${expression_bed} ${prefix} \`
    `--covariates ${covariates_file} \`
    `--mode cis_nominal`

### How to verify you've done it
 - Review results (produced in `parquet` format)

### Other Things to Know
 - TensorQTL can be run as a python module, when performing multiple analysis
    - Example  
    `import pandas as pd`
    `import tensorqtl`
    `from tensorqtl import genotypeio`
 - Site the paper (listed below) if using TensorQTL in your research
 - TensorQTL uses TensorFlow v 1.13

### How to learn more
 - :orange_book: Link to notebook [provides examples for running cis- and trans-QTL mapping with tensorQTL](https://github.com/broadinstitute/tensorqtl/blob/master/example/tensorqtl_examples.ipynb)
 - 📘 Link to paper ['Scaling computational genomics to millions of individuals with GPUs'](https://www.biorxiv.org/content/10.1101/470138v3)
 - :octocat: Link to [TensorQTL](https://github.com/broadinstitute/tensorqtl) GitHub Repo