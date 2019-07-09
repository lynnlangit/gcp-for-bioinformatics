# Use Google Pipelines API

**ARTICLE IN PROGRESS**

### Why do this
 - You want to scale your analysis pipeline using Google Pipelines API
 - Pipelines API was called Genomics API & still uses that name in some documentation

 [![gcp-pipelines](/images/gcp-pipelines.png)]()

### What is this
 - Using Google Pipelines API to orchestrate scalable genomic analysis running Compute Engine
 - Using Cloud Storage + Pipelines API + BigQuery to create serverless end-to-end scalable genomic analysis jobs
 - You have a number of choices when scaling up pipelines - this article covers the items highlighted in RED SQUARES

[![gcp-pipelines-api](/images/gcp-pipelines-api.png)]()

### Key considerations
 - This is a serverless solution because you work with services or API endpoints and you do NOT configure or manage VMs or containers
 - Understanding (forecasting) service costs, particularly for BigQuery is important to inadvertently avoid overspending 

### How to do this
 - SEE the GCP Google Cloud Genomics API, see this link -- https://cloud.google.com/genomics/overview
 - USE the GCP Genomics API Quick Start steps to get started -- https://cloud.google.com/genomics/quickstart

### How to verify you've done it
 - Run your analysis, monitor for correct results
 - Monitor for service cost, execution time and adjust to meet your requirements

### Other Things to Know
 - Google Pipelines API was called Google Genomics API
 - There are two major versions of the this API - v1 and v2
 - There are a number of bioinformatics libraries (cromwell, Nextflow....) that can work WITH Pipelines API

### How to learn more
 - End-to-end pipeline patterns and documentation, see the Google Genomics Cookbook -- http://googlegenomics.readthedocs.io/en/latest/