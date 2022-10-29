# Samtools GCP Cloud Deployment Options

**Samtools** are a widely used open source toolset for bioinformatics. These tools are defined as *"Utilities for the analysis of genomic files which use the Sequence Alignment/Map (SAM) format"*, source code can be found at this [link](http://www.htslib.org/doc/samtools.html).

## What is it

Samtools is a suite of open source programs for interacting with high-throughput sequencing data. Samtools is a set of utilities that manipulate alignments in the SAM (Sequence Alignment/Map), BAM, and CRAM formats. It converts between the formats, does sorting, merging and indexing, and can retrieve reads in any regions swiftly. Samtools is designed to work on a stream
It consists of three separate repositories:

- Samtools: Reading/writing/editing/indexing/viewing SAM/BAM/CRAM format
- BCFtools: Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence variants
- HTSlib: A C library for reading/writing high-throughput sequencing data

NOTE: Samtools and BCFtools both use HTSlib internally, but these source packages contain their own copies of htslib so they can be built independently.

### Get it / Set it up

- Open source - download [here](http://www.htslib.org/)
- Set up - directions [here](http://www.htslib.org/download/)
- Source files - buckets + public data (bq dataset?)  --> Dataplex
- GCR samtools container - [here](gcr.io/cloud-lifesciences/samtools)
- BAM input in GCP bucket - [here](gs://genomics-public-data/NA12878.chr20.sample.bam)

## The Tests

This article will cover a series of types of `samtools` task pipeline deployments on a number of GCP Services.  Most services will use Cloud Storage buckets for input/output files.

- Single task group pipeline (script)
- Containerized pipeline - get a container vs make a container (gcr)
- Using different GCP compute services

## Possible Run locations

Can be run on compute IaaS, SaaS or PaaS services on the Google Cloud Platform.

### IaaS
- IaaS -- GCE/VM - run as script 
- IaaS -- GCE/VM - run as container 
	- from DockerHub - [link](https://hub.docker.com/r/biocontainers/samtools/) 
	- using command `docker pull biocontainers/samtools`

### SaaS
- SaaS -- Colabs Notebook 
	- example link (from 2014) - [link](https://colab.research.google.com/github/BenLangmead/comp-genomics-class/blob/master/notebooks/SAM.ipynb)
- SaaS -- Function - trigger script from bucket
- SaaS -- CloudRun Job - run container on bucket

### PaaS
- PaaS -- Vertex AI Notebook instance
- PaaS -- Nextflow samtools - [link](https://github.com/nf-modules/samtools)
- PaaS -- GKE - run containers


## Monitor and Scale

- VMs - add NLB and monitoring
- Functions/ CloudRun - monitor and adjust configuration
- K8 - set up, monitor and scale

## Links

- :hammer: Workflow example `fastq to bam` - [link](http://www.htslib.org/workflow/fastq.html)
- :octocat: GitHub source repo for `samtools` - [link](https://github.com/samtools/samtools)
- :book: Article '10 Years of Samtools' - [link](http://gigasciencejournal.com/blog/play-it-again-samtools/)



