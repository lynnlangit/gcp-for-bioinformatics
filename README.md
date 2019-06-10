[![Chat on Gitter](https://img.shields.io/gitter/room/gcp-for-bioinformatics/nextflow.svg?colorB=26af64&style=popout)](https://gitter.im/gcp-for-bioinformatics)

# Google Cloud Platform (GCP) for Bioinformatics
This repository contains information about using Google Cloud Platform public cloud services for data analysis tasks.  The guidance is intended for bioinformatics researchers - in particular, for those who are new to working with GCP.  The information is based on advisory work my team has done with the following groups and organizations:

1) The Broad Institute (Cambridge, MA) - [link](https://www.broadinstitute.org)
2) CSIRO Bioinformatics (Sydney, Australia) - [link](https://bioinformatics.csiro.au/)
3) Nextflow.io team (Barcelona, Spain) - [link](https://www.nextflow.io/about-us.html)
4) EMBL-EBI (Cambridge, UK) - [link](https://www.ebi.ac.uk/)

 [![gcp-genomics](/images/gcp-genomics.png)](https://cloud.google.com/genomics/docs/public-datasets/) [![Join the chat at https://gitter.im/gcp-for-bioinformatics/community](https://badges.gitter.im/gcp-for-bioinformatics/community.svg)](https://gitter.im/gcp-for-bioinformatics/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Why should I use a public cloud vendor for bioinformatic analysis?

- [Nature article: "Cloud computing for genomic data analysis and collaboration"](https://www.nature.com/articles/nrg.2017.113)
- Being able to run large (or huge) scale analysis jobs when and only when you need to run them


## Commonly Asked: "How do I..."

Here are quick links to some of the most commonly asked questions.

- [Setup my GCP account?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/0_Setup_GCP_account/1_Setup_GCP_Account.md)
- [Use services in a GCP Free Tier account?](https://cloud.google.com/free/docs/gcp-free-tier)
- [Upload a file to a GCP storage bucket?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_and_Data/1_Use_GCS_File_Storage.md)
- [Start a Virtual Machine instance on GCP?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Compute_with_VMs_and_Docker_Containers/1_Use_GCE_VMs_for_Compute.md)
- [Run an example analysis on Terra.bio (on GCP)?](https://app.terra.bio/#library/showcase)
- [Understand how much GCP services cost?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/0_Setup_GCP_account/1_Setup_GCP_Account.md#key-considerations)
- [Use GCP security best practices?](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/0_Setup_GCP_account/3_Setup_GCP_Project_Security.md)
- [Learn more about using GCP?](https://www.linkedin.com/learning/google-cloud-platform-essential-training-2017)
- [How do I use the BASH command line?](https://www.youtube.com/watch?v=EMaFdfIlK58)

## Topic Areas in this Repository

- Setup Google Cloud Platform Account
    - Setup Account
    - Select and setup client tools
    - Configure user permissions / GCP services security
- Files and Data 
    - Use Google Cloud Storage
    - Use public genomic datasets on GCP
    - Use Big Query
    - Use Cloud SQL
- Compute with VMs and Containers
    - Use Google Compute Engine
    - Use Terra.bio
    - Use Docker
    - Use cromwell
    - Use dsub
    - Use Kubernetes
    - Use Nextflow.io
    - Use GCE Jupyter Notebook instances
- Machine Learning
    - Use ML Vision / Video APIs & AutoML
    - Use ML Text / Natural Language APIs
    - Use ML Table Analysis
    - Use Deep Variant
    - Use GCE ML (deep learning) image 
- Code/Cloud Tools
    - Use Google Code Repositories
    - Use GCP Deployments
    - Use Google Container Repositories
    - Use Stackdriver
- Serverless Compute with Functions
    - Use Cloud Functions and Cloud Run
- Advanced GCP Topic
    - Get links to advanced GCP topics