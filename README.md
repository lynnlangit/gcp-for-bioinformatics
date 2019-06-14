[![Chat on Gitter](https://img.shields.io/gitter/room/gcp-for-bioinformatics/nextflow.svg?colorB=26af64&style=popout)](https://gitter.im/gcp-for-bioinformatics)

 [![gcp-bioinformatics](/images/main.png)]() 

# Google Cloud Platform (GCP) for Bioinformatics
This repository contains information about using Google Cloud Platform public cloud services for data analysis tasks.  The guidance is intended for bioinformatics researchers - in particular, for those who are new to working with GCP.  The information is based on advisory work my team has done with the following groups and organizations:

1) The Broad Institute (Cambridge, MA) - [link](https://www.broadinstitute.org)
2) CSIRO Bioinformatics (Sydney, Australia) - [link](https://bioinformatics.csiro.au/)
3) Nextflow.io team (Barcelona, Spain) - [link](https://www.nextflow.io/about-us.html)
4) EMBL-EBI (Cambridge, UK) - [link](https://www.ebi.ac.uk/)

[![bioinformatics-groups](/images/logos.png)]() 

## Why should I use a public cloud vendor for bioinformatic analysis?

- [Nature article: "Cloud computing for genomic data analysis and collaboration"](https://www.nature.com/articles/nrg.2017.113)
- Be able to run large (or huge) sized analysis jobs when and only when you need to run them
- Save time and money on infrastructre and get results faster


## Commonly Asked: "How do I..."

Here are quick links to some of the most commonly asked questions.

- [Setup my GCP account?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/0_Setup_GCP_account/1_Setup_GCP_Account.md)
- [Use services in a GCP Free Tier account?](https://cloud.google.com/free/docs/gcp-free-tier)
- [Upload a file to a GCP storage bucket?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_and_Data/1_Use_GCS_File_Storage.md)
- [Start a Virtual Machine instance on GCP?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Compute_with_VMs_and_Docker_Containers/1_Use_GCE_VMs_for_Compute.md)
- [Run an example analysis on Terra.bio (on GCP)?](https://app.terra.bio/#library/showcase)
- [Understand how much GCP services cost?](https://cloud.google.com/products/calculator/)
- [Use GCP security best practices?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/0_Setup_GCP_account/3_Setup_GCP_Project_Security.md)
- [Learn more about using GCP services?](https://www.linkedin.com/learning/google-cloud-platform-essential-training-3)

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
    - Use Terra.bio workflows
    - Use Docker containers
    - Use cromwell workflows
    - Use dsub workflows
    - Use Kubernetes to orchestrate container pipelines
    - Use Nextflow.io workflows
    - Use Google Compute Engine with Jupyter Notebooks on a Virtual Machine
- [Machine Learning](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/3_Machine_Learning)
    - Use ML Vision / Video APIs & AutoML
    - Use ML Text / Natural Language APIs
    - Use ML Table Analysis
    - Use Deep Variant
    - Use Google Compute Engine ML (deep learning) image to create a Virtual Machine
    - Use a Jupyter notebook in Google Colabs with BigQuery
    - Use a Jupyter notebook in Google Colabs with BigQuery ML
- [Code & Cloud Service Tools](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/4_Code_%26_Cloud_Service_Tools)
    - Use Google Code Repositories for code source control with Git
    - Use GCP Deployments to deploy GCP services
    - Use Google Container Repositories to host docker container images
    - Use Stackdriver to analyze GCP service logs
- [Serverless Compute with Functions](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/5_Serverless_Compute_with_Functions)
    - Use Cloud Functions and Cloud Run
- [Advanced GCP & Scripts](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/6_Advanced_GCP_%26_Scripts)
    - Get links to advanced GCP topics
    - Use gcloud with GCE
    - Use gcloud with Cloud SQL
    - Use gsutil with Cloud Storage