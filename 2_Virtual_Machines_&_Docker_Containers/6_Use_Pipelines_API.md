# Use Google Pipelines API


### Why do this
 You want to scale your analysis using Google Pipelines API  

 [![gcp-pipelines-api](/images/gcp-pipelines-api.png)]()

### What is this
 - Use Google Pipelines API to orchestrate scalable genomic analysis running Compute Engine **without** manually configuring scaling of your compute cluster
 - Use Cloud Storage + Pipelines API + BigQuery to create serverless end-to-end scalable genomic analysis jobs
 - You have a number of choices when scaling up pipelines - this article covers the items highlighted in RED SQUARES

[![gcp-pipelines](/images/gcp-pipelines.png)]()

### Key considerations
 - This is a serverless solution because you work with services or API endpoints and you do NOT configure or manage VMs or containers
 - Understand (forecast) service costs for this solution, particularly for BigQuery is important so that you can inadvertently avoid overspending 

### How to do this
 - USE the GCP Genomics API Quick Start steps to get started -- https://cloud.google.com/genomics/quickstart
- SEE the GCP Google Cloud Genomics API, see this link -- https://cloud.google.com/genomics/overview

### How to verify you've done it
 - Run your analysis, monitor for correct results (view files in your output bucket)
 - Monitor for service cost, execution time and adjust to meet your requirements

### Other Things to Know
 - Google Pipelines API was called Google Genomics API and still uses that name in some of the documentation
 - There are two major versions of the this API - v1 and v2
 - There are a number of bioinformatics libraries (cromwell, Nextflow....) that are designed to work WITH Pipelines API

### How to learn more
 - End-to-end pipeline patterns and documentation, see the Google Genomics Cookbook -- http://googlegenomics.readthedocs.io/en/latest/