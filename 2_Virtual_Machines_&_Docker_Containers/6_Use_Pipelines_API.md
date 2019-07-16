# Use Google Pipelines API


### Why do this
 You want to scale your analysis using Google Pipelines (also called Genomics) API  

 [![gcp-pipelines-api](/images/gcp-pipelines-api.png)]()

### What is this
 - Use Google Pipelines API to orchestrate scalable genomic analysis running Compute Engine **without** manually configuring scaling of your compute cluster
 - Use Cloud Storage + Pipelines API + BigQuery to create serverless end-to-end scalable genomic analysis jobs

### Key considerations
 - This is a serverless solution because you work with services or API endpoints and you do NOT configure or manage VMs or containers
 - Understand (forecast) service costs for this solution, particularly for BigQuery is important so that you can inadvertently avoid overspending 

### How to do this
 USE the [Quick Start](https://cloud.google.com/genomics/quickstart) to run a pipeline that uses the Pipelines API to create an index file (BAI file) from a large binary file containing DNA sequences (BAM file)

### How to verify you've done it
 - Run your analysis, monitor for correct results (view files in your output bucket)
 - Monitor for service cost, execution time and adjust to meet your requirements

### 📺Click to see Lynn's 4 minute exploration of this section  
[![GCP Genomics Pipelines API for Bioinformatics](http://img.youtube.com/vi/B8RABR19n8Y/0.jpg)](http://www.youtube.com/watch?v=B8RABR19n8Y "GCP Genomics Pipelines API for Bioinformatics")


### Other Things to Know
 - Google Pipelines API was called Google Genomics API and still uses that name in some of the documentation
 - There are two major versions of the this API - v1 and v2
 - The pipeline can run with unaligned BAM files stored in Cloud Storage
    - If your files are in an aligned BAM or FASTQ format, then you must convert them to BAM
    - You can convert your input files locally, or you can use the Pipelines API to convert them in the cloud
 - There are a number of bioinformatics libraries (cromwell, Nextflow....) that are designed to work WITH Pipelines API

### How to learn more
 - Google Cloud Genomics scenarios, see this [link](https://cloud.google.com/genomics/docs/tutorials/)
 - 4 GCP Pipelines API examples in Jupyter notebooks - [link](https://github.com/googlegenomics/datalab-examples/tree/master/datalab/genomics)
 - End-to-end pipeline patterns and documentation, see the Google Genomics Cookbook -- http://googlegenomics.readthedocs.io/en/latest/