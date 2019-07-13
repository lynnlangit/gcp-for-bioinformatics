
## Usage Patterns in GCP for Bioinformatics

This page describes some common patterns and use cases for bioinformatic research on the ☁️Google Cloud Platform.
If you're new to working with public cloud services, including those available from ☁️GCP, you can start by considering the three main categories of services available for you to use in cloud computing:
- 🔷**Storage** - for files or data - often referred to as 'buckets'
- 🔶**Compute** - for calculation at scale - often called 'VMs or virtual machines'.  Docker container images are part of this category as well.
- 🔴**Other Services** - other services, such as security configuration (permissions and encyrption) 



### 1. Using public Genomic Reference Datasets

☁️GCP hosts a number of genomic reference datasets.  You can view the files by using a ☁️GCP client (Web UI or script) to browse to publically available ☁️GCP Cloud Storage buckets.  Alternatively, you can write a SQL query to view any subset of the public genomic datasets available in ☁️GCP BigQuery storage.  For more information see 📗[this page](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/2_Use_public_genomic_datasets.md) of this repository. A key advantage to using these datasets in your cloud-based research, is that you do not have to upload these large (or huge) files to GCP.  You can simply refer to the location, i.e. `gs://{public-bucket-name}/{folder-name}/file....` in your research job configuration.

###  2. Quickly trying out bioinformatics tools

Rather than installing bioinformatics scripts, tools or libraries and their dependencies on your local laptop, you can use ☁️GCP to quickly start a 'development machine'. Do this by using services such as 🔶Google Compute Engine.  

Additionally, many ☁️GCP services, such as 🔶Compute Engine or Kubernetes Engine support running docker container images, such as those on biocontainers, which include commonly used bioinformatics tools such as blastn, bamstats, GATK, Hail and other.  This means you can 'try out' docker containers on ☁️GCP, rather than having to install and configure docker tools locally.

For more information see 📗[this section](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers) of this repository.


### 3.  Running Jupyter Notebooks 

There are a number of options for running Jupyter notebooks using ☁️GCP services.  These include starting specially pre-configured, ☁️GCP Notebook instances, as well as using bioinforamtics environments, such as The Broad Institute's Terra.bio Notebooks (which runs on top of GCP services.)  These instances already include the Jupyter libraries, so you don't have to install anything to be able to run Jupyter notebooks on them.

Also, notebooks which run computationally intensive analysis, such as machine learning with deep neural network libraries (i.e. TensorFlow) can be run in GCP with more powerful processors (GPUs or TPUs, in addtion to CPUs) without you having to install hardware drivers on a machine.

For more information see 📗[this page for Notebook instances](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/2_Use_Jupyter_Notebook_VM.md), and 📗[this page for Terra.bio notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/3_Use_Terra.bio_Notebooks.md) in this repository.


### 4.  Running Bioinformatics Analysis Jobs at scale

A key reason to move from local to cloud-based computing is the ability to scale out large-sized analysis jobs. Running on ☁️GCP, can address the 'my job won't run on my laptop (or on-premise cluster)' problem. However, efficiently scaling compute can be quite complex.   Also there are many different cloud services and methods available to do this on GCP (🔶Compute Engine VM auto-scalers, Kubernetes clusters for docker container images....).  

These scaling patterns include everything from low-level virtual machine orchestration (where the user needs to provide the majority of the configuration information) all the way to much higher-level tools that have been specifically designed to reduce the amount of manual configuration you need to do to run your jobs, such as Terra.bio from The Broad Institute and others.

For more information see 📗[this section](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers) of this repository.
