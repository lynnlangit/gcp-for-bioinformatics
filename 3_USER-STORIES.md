
## User Stories for Bioinformatics on GCP

This page describes some common patterns & use cases for bioinformatic research which runs on the ☁️ Google Cloud Platform.
If you're new to working with public cloud services, including those available from ☁️ GCP, you can start by considering the 3 main categories of services available for you to use in cloud computing:
- 🔷 **Storage** - for files or data - referred to as storage 'buckets' or managed databases (such as MySQL)
- 🔶 **Compute** - for calculation at scale - often called 'VMs or virtual machines'.  Docker container image clusters are part of this category as well.
- 🔴 **Other Services** - other services, such as security configuration (permissions and encyrption), networks or machine learning services   

### 1. Use public Genomic Reference Datasets

☁️ GCP hosts a number of genomic reference datasets stored as files.  You can view these files by using a ☁️ GCP client (Web UI or script) to **browse** to publicaly available files in ☁️ GCP Cloud Storage buckets.  Alternatively, you can write a SQL query to **view any subset** of the public genomic datasets available in ☁️ GCP BigQuery storage.  For more information see 📗[this page](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/2_Use_public_genomic_datasets.md) of this repository. A key advantage to using these datasets in your cloud-based research, is that you do not have to upload these large (or huge) files to GCP.  You can simply refer to the GCP location, i.e. `gs://{public-bucket-name}/{folder-name}/file....` in your research job configuration.

###  2. Try out bioinformatics tools

Rather than installing bioinformatics scripts, tools or libraries and their dependencies on your local laptop, you can use ☁️ GCP to quickly start a cloud-based 'development machine'. Do this by using services such as 🔶 Google Compute Engine to create customized Virtual Machines instances.  

Additionally, many ☁️ GCP services, such as 🔶 Compute Engine or Kubernetes Engine support running docker container images, such as those on [biocontainers](https://biocontainers.pro/#/), which include commonly used bioinformatics tools such as blastn, bamstats, GATK, Hail and others.  This means you can quickly and easily 'try out' bioinformatics analysis tools by running them in docker container images on ☁️ GCP, rather than having to install and configure docker tools and any other dependencies locally in order to be able to run these tools.

For more information see 📗[this section](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers) of this repository.


### 3.  Run Jupyter Notebooks 

There are a number of options for running Jupyter notebooks using ☁️ GCP services.  These include starting specially pre-configured, ☁️ GCP Notebook instances,as well as using bioinformatics environments, such as The Broad Institute's Terra.bio Notebooks (which run on top of ☁️ GCP services.)  These instances already include the Jupyter libraries, so you don't have to install anything to be able to run Jupyter notebooks on them.

Also, notebooks which run computationally intensive analysis, such as machine learning with deep neural network libraries (i.e. TensorFlow) can be run on ☁️ GCP with more powerful processors (GPUs or TPUs, in addtion to CPUs) without you having to install hardware drivers for those specialty processes on a machine.

For more information see 📗[this page for Notebook instances](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/2_Use_Jupyter_Notebook_VM.md), and 📗[this page for Terra.bio notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/3_Use_Terra.bio_Notebooks.md) in this repository.


### 4.  Run Bioinformatics Analysis Jobs at (GWAS) scale

A key reason to move from local to cloud-based computing is the ability to scale out large-sized analysis jobs. Running on ☁️ GCP can address the 'my job won't run on my laptop' (or on my on-premise HPC cluster) problem. However, efficiently scaling compute services can be quite complex.   Also there are many different cloud services and methods available to do this on GCP (🔶 Compute Engine VM auto-scalers, Kubernetes clusters for docker container images....).  

These scaling patterns include everything from low-level virtual machine orchestration (where **you** needs to provide the majority of the configuration information) all the way to much higher-level tools that have been specifically designed to reduce the amount of manual configuration you need to do to run your jobs, such as [Terra.bio](https://terra.bio/) from The Broad Institute and others.  A conceptual view of Terra.bio is shown below.

[![terra-4](/images/terra-4.png)]() 

For more information see 📗[this section](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers) of this repository.

## General User Story Map for Bioinformatics

Here is a link to a general USER STORY map - [link](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/user-stories.pdf)
