# Samtools GCP Cloud Deployment Options

**Samtools** is a widely used open source toolset for bioinformatics. These tools are defined as *"Utilities for the analysis of genomic files which use the Sequence Alignment/Map (SAM) format"*, source code can be found at this [link](http://www.htslib.org/doc/samtools.html).

This page will detail deployment options on GCP.  The purpose is to learn | compare various GCP services for compute using a bioinformatics example. Sketchnote below from [@pvergadia](https://twitter.com/pvergadia) - [link to full sketchnote page](https://thecloudgirl.dev/gcpcompute.html)

<img src="https://thecloudgirl.dev/images/vs.jpg" width=900>

## What is it

Samtools is a suite of open source programs for interacting with high-throughput sequencing data. Samtools is a set of utilities that manipulate alignments in the SAM (Sequence Alignment/Map), BAM, and CRAM formats. It converts between the formats, does sorting, merging and indexing, and can retrieve reads in any regions swiftly. Samtools is designed to work on a stream
It consists of three separate repositories:

- **Samtools**: Reading/writing/editing/indexing/viewing SAM/BAM/CRAM format
- **BCFtools**: Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence variants
- **HTSlib**: A C library for reading/writing high-throughput sequencing data

NOTE: Samtools and BCFtools both use HTSlib internally, but these source packages contain their own copies of htslib so they can be built independently.

One or more of the available Samtools is often used in a genomic data anlysis pipeline.  An example pipeline which shows the use of samtools, linked from an article posted by [UT in Austin, TX](https://wikis.utexas.edu/display/CoreNGSTools/The+Basic+Alignment+Workflow), is shown below.

<img src="https://wikis.utexas.edu/download/attachments/66697008/image2016-5-23%2018%3A17%3A24.png?version=1&modificationDate=1464027446000&api=v2" width=900>

---

## Prepare to Test

There are a number of steps to prepare before testing.  These include downloading and installing samtools  Also you'll need to get sample input data. Your test results will differ, depending on your input data type, size and values.

### Samtools: Get it / Set it up

- Get Samtools (open source and free) - download [here](http://www.htslib.org/)
- Set up Samtools - directions [here](http://www.htslib.org/download/)
- (Optional) Upload Samatools source files to your GCP Cloud Storage bucket
- (Optional) GCR samtools container - [here](gcr.io/cloud-lifesciences/samtools)

### Sample Input Data: Get it / Set it up

- Create one or more Cloud Storage buckets in your GCP account
- Add your input data to your bucket
- Use public datasets on GCP
	- BAM input in GCP bucket - [here](gs://genomics-public-data/NA12878.chr20.sample.bam)
- (Optional) Index/Tag buckets / BigQuery datasets as a DataMesh using GCP DataPlex services

## Perform The Tests

This page will cover a series of types of `samtools` task pipeline deployments on a number of GCP Services.  Most services will use Cloud Storage buckets for input/output files.

- Single task group pipeline (script)
- Containerized pipeline - get a container vs make a container (gcr)
- Using different GCP compute services

## Possible Run locations

Can be run on compute IaaS, SaaS or PaaS services on the Google Cloud Platform.

### IaaS - run on VM

- IaaS -- GCE/VM - run as script 
- IaaS -- GCE/VM - run as container 
	- from DockerHub - at this URL: https://hub.docker.com/r/biocontainers/samtools/ 
		- using command `docker pull biocontainers/samtools`
	- from GCR - at this URL: gcr.io/cloud-lifesciences/samtools 
		- using command `docker pull gcr.io/cloud-lifesciences/samtools:latest`

### SaaS - run via services

- SaaS -- Colabs Notebook 
	- example link (from 2014) - [link](https://colab.research.google.com/github/BenLangmead/comp-genomics-class/blob/master/notebooks/SAM.ipynb)
- SaaS -- Cloud Function - trigger script from bucket
- SaaS -- CloudRun Job - run container on bucket
- SaaS -- Google Batch - run cluster of VMs from compute trigger (CloudRun or Cloud Function)

### PaaS - run on managed VMs/containers

- PaaS -- Vertex AI Notebook instance - use when visualizing results
- PaaS -- GKE - run containers

---

## Monitor and Scale

- VMs - type | size of VM, add NLB and monitoring
- Functions/ CloudRun - monitor and adjust configuration
- K8 - set up, monitor and scale

## Use Bioinformatics Workflow Language

- run on Nextflow on GCP (w/Google Batch) 
	- Use `nf-core` version of samtools
	- Get from `nf-core` registry - [link](https://nf-co.re/modules/samtools_view) 
	- source code - [link](https://github.com/nf-modules/samtools)

## Links

- :hammer: Workflow example `fastq to bam` - [link](http://www.htslib.org/workflow/fastq.html)
- :octocat: GitHub source repo for `samtools` - [link](https://github.com/samtools/samtools)
- 🗃️ Google Cloud Life Sciences public container images - [link](https://console.cloud.google.com/gcr/images/cloud-lifesciences)
- :book: Article '10 Years of Samtools' - [link](http://gigasciencejournal.com/blog/play-it-again-samtools/)



