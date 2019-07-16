# Use Google Cloud Services for Virtual Machines & Docker Containers

In this section, you'll get information about using Google Cloud services for VMs and docker containers.  You'll use Google Compute Engine VMs.  Also you'll use services for docker containers including Google Kubernetes Engine (or K8).  

Additionally you'll use bioinformatics pipeline and workflow APIs to coordinate VMs and containers.  You'll also see how to create a Notebook instance VM using a GCP template, so that you can use a Jupyter notebook for your analysis job.

### 📺Click below to see Lynn's 3 minute intro to this section  
[![GCP Compute](http://img.youtube.com/vi/hTdBDlrf80w/0.jpg)](http://www.youtube.com/watch?v=hTdBDlrf80w "Intro GCP Services for Compute")

Here are the topic pages in this section:

- Use Compute Engine Virtual Machines
- Use Jupyter Notebook VM Instance
- Use Terra.bio Notebook
- Test Docker Container Image for Pipeline
- Orchestrate Containers with GKE (Kubernetes)
- Use Pipelines API
- Use Cromwell and WDL for Pipeline
- Use Terra.bio Workflow
- Use Nextflow for Pipeline
- Use dsub for Pipeline
- Use Galaxy for Pipeline

The sections of the reference architecture outlined in red will be covered.

[![gcp-compute](/images/compute.png)]()

Bioinformatics APIs include the following: dsub, cromwell, Terra.bio and Nextflow. 

There are a number of possible ways to construct high volume data analysis workflows or pipelines on GCP with these purpose-built APIs.  In addition there is a specialized GCP API for Genomics workloads - it's called the Google Genomics/Pipelines API.  

An [interactive representation](https://atlas.mindmup.com/lynnlangit/bioinformatics_container_based_pipelines/index.htm) for several of the possible build paths for bioinformatics workflows on GCP is shown below.

[![workflows](/images/workflows.png)](https://atlas.mindmup.com/lynnlangit/bioinformatics_container_based_pipelines/index.htm) 

For a perspective on different possible ways to run a bioinformatics tool, read my article **'Blast 10 Ways - Adventures in Bioinformatics Tool Deployments'** published on [Medium.](https://medium.com/@lynnlangit/blast-10-ways-3db78f881059)

