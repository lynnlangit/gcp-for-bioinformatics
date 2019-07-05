[![Chat on Gitter](https://img.shields.io/gitter/room/gcp-for-bioinformatics/nextflow.svg?colorB=26af64&style=popout)](https://gitter.im/gcp-for-bioinformatics)

# Google Cloud Platform (GCP) for Bioinformatics
This repository contains information about using Google Cloud Platform public cloud services for bioinformatics data analysis tasks.  The guidance is intended for researchers - in particular, this guide is for those who are NEW to working with GCP.  Key GCP services and patterns will be covered. The information is based on advisory work my team has done with the following groups and organizations:

1) The Broad Institute (Cambridge, MA) - [link](https://www.broadinstitute.org)
2) CSIRO Bioinformatics (Sydney, Australia) - [link](https://bioinformatics.csiro.au/)
3) Nextflow.io team (Barcelona, Spain) - [link](https://www.nextflow.io/about-us.html)
4) EMBL-EBI (Cambridge, UK) - [link](https://www.ebi.ac.uk/)
5) Galaxy Project (Europe) - [link](https://galaxyproject.org/cloud/)

[![bioinformatics-groups](/images/logos.png)]() 

## Why should I use a public cloud vendor for bioinformatics?

- [Nature article: "Cloud computing for genomic data analysis and collaboration"](https://www.nature.com/articles/nrg.2017.113)
- Be able to run large (or huge) sized analysis jobs when and only when you need to run them
- Save time & money by using vendor-managed infrastructure -> get analysis results faster



## Click below to see 'Lynn's Welcome Video' (4 min) 

[![Welcome to GCP for Bioinformatics](http://img.youtube.com/vi/YoFkSVDlN6k/0.jpg)](http://www.youtube.com/watch?v=YoFkSVDlN6k "Welcome to GCP for Bioinformatics")

NOTE: Each page of this Repo includes the following:  
1. A short description of why, what, how to use the GCP service
2. A short linked screencast showing how to use the GCP service.   Here is the link to all of the screencasts for this Repo - as a [YouTube playlist](https://www.youtube.com/playlist?list=PL4Q4HssKcxYvcixWS08UFaYIH7y4IAV0z)



## Diagram of key Google Cloud Services for Bioinformatics

Shown below is a basic pattern for performing genomic analysis jobs on Google Cloud Platform. Each blue icon represents a type of GCP service.  In this guide, you'll read how to get started with the services shown below.  In addition to the topic coverage, listed below a direct set of links to answer the most commonly asked questions.

[![gcp-bioinformatics](/images/main.png)]() 


## Topic Areas in this Repository

- [Setup Google Cloud Platform Account](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/0_Setup_GCP_account)
    - Setup GCP Account
    - Setup GCP client tools
    - Setup GCP project security
- [Files & Data](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/1_Files_%26_Data) 
    - Use Google Cloud Storage for files
    - Use public genomic datasets on GCP
    - Use Big Query to query files
    - Use Cloud SQL to store data
- [Compute with Virtual Machines & Docker Containers](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers)
    - Use Google Compute Engine Virtual Machines
    - Use Jupyter Notebook Instances (specialty GCE VMs)
    - Use Terra.bio workflows or notebooks
    - Use cromwell & WDL for pipelines
    - Use dsub for pipelines 
    - Use Nextflow.io for pipelines
    - Use Galaxy Project for pipelines
    - Use Docker containers for pipelines
    - Orchestrate containers with Kubernetes
- [Machine Learning](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/3_Machine_Learning)
    - Use ML Vision / Video APIs & AutoML
    - Use ML Text / Natural Language APIs
    - Use ML Table Analysis
    - Use Deep Variant
    - Use Google Compute Engine ML (deep learning) image to create a Virtual Machine
    - Use Google optimized Deep Learning container to create your own ML container
    - Use a Jupyter notebook in Google Colabs with BigQuery
    - Use a Jupyter notebook in Google Colabs with BigQuery ML
- [Code & Cloud Service Tools](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/4_Code_%26_Cloud_Service_Tools)
    - Use Source Repositories for code source control
    - Use Deployment Manager to deploy services
    - Use Google Container Repositories to host docker container images
    - Monitor log with Stackdriver
    - Setup CI/CD with GCP CloudBuild
- [Serverless Compute with Functions](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/5_Serverless_Compute_with_Functions)
    - Serverless Cloud Functions 
    - Serverless Cloud Run
- [Advanced GCP & Scripts](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/6_Advanced_GCP_%26_Scripts)
    - Get links to advanced GCP topics
    - Use gsutil to manage Cloud Storage
    - Use gcloud to list Compute Engine instances
    - Use gcloud to manage Cloud SQL
    - Use gcloud and bq to run a genomic analysis with Genomics API & BigQuery
    - Start a container & run a genomic analysis with VariantTransforms on Cloud Dataflow
    - Use a docker command to start a container & run a genomic analysis with VariantTransforms on Cloud Dataflow

----
