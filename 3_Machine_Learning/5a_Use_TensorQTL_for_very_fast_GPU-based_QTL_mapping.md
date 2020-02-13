# USE TensorQTL for GPU-optimized QTL mapping

### Why do this
 - ANALYZE structured data stored in tables via machine learning models
   - via optimized QTL (quantitative trait loci) mapping
   - via optimized Bayesian non-negative matrix factorization (named SignatureAnalyzer-GPU)
 - USE GCP & TensorFlow to create the best-fit ML model for your data

### What is this
 - TensorQTL is a GPU-based QTL mapper, enabling **~200-300 fold faster** cis- and trans-QTL mapping (compared to CPU-based implementations)
 - Use a number of different commands for processing

### Key considerations
 - USE three input files: genotypes, phenotypes, & covariates
 - PROVIDE phenotypes in BED format (phenotypes x samples)
 - PROVIDE covariates as a text file (covariates x samples)

### How to do this
 - Install & Setup the library from GitHub (link at bottom)
 - Run your Analysis (example below)   
    `python3 -m tensorqtl ${plink_prefix_path} ${expression_bed} ${prefix} \`
    `--covariates ${covariates_file} \`
    `--mode cis_nominal`

### How to verify you've done it
 - Review your results / output
 - Produced in `parquet` file format

### Other Things to Know
 - TensorQTL can be run as a python module, when performing multiple analysis (example below)  
    `import pandas as pd`  
    `import tensorqtl`  
    `from tensorqtl import genotypeio`
 - Site the paper (listed below) if using TensorQTL in your research
 - TensorQTL uses TensorFlow v 1.13

### How to learn more
 - :orange_book: Link to notebook - [provides examples for running cis- & trans-QTL mapping with tensorQTL](https://github.com/broadinstitute/tensorqtl/blob/master/example/tensorqtl_examples.ipynb) 
 - 📘 Link to paper - ['Scaling computational genomics to millions of individuals with GPUs'](https://www.biorxiv.org/content/10.1101/470138v3)
 - :octocat: Link to [TensorQTL](https://github.com/broadinstitute/tensorqtl) GitHub Repo 