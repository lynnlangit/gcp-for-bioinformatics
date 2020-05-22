# Use Google Life Sciences API


### Why do this
 - Scale your analysis using [`Google Cloud Life Sciences API`](https://cloud.google.com/life-sciences/) to manage compute resources
 - Google Cloud Life Sciences API was previously nameed Google Cloud Genomics/Pipelines API

 [![GCP Life Sciences Reference Architecture](/images/gcp-life-sciences-arch.png)]()

### What is this
 - USE Google Cloud Storage + LifeSciences API + Variant Transforms API + BigQuery to create **serverless** end-to-end scalable genomic analysis jobs

   - USE **Cloud Life Sciences API** to orchestrate scalable genomic analysis running Compute Engine **without** manually configuring scaling of your compute cluster. The API is designed to be a backend for bioinformatics tools (ex. dsub) or systems (cromwell), by providing job scheduling for Docker-based tasks that perform secondary genomic analysis by running container images on one or more GCE Virtual Machines. Typical secondary analysis jobs include filtering raw reads, aligning and assembling sequence reads, and QA and variant calling on aligned reads.

   - USE **Variant Transforms Tool** (an open-source tool) is based on Apache Beam and uses GCP Dataflow. Using the tool allows you to transform and load hundreds of thousands of files, millions of samples, and billions of records in a scalable manner into BigQuery. The tool also has a preprocessor which you can use to validate VCF files and identify inconsistencies.

   - USE **BigQuery** to analyze variants using the SQL query language.

### Key considerations
 - This is a serverless solution because you work with services or API endpoints and you do NOT configure or manage clusters of VMs or containers
 - Forecast & verify service costs for your analysis jobs --particularly for BigQuery. This is important so that you can inadvertently avoid overspending, which can hapen based on both the data size and computational complexity of your analysis

### How to do this
 USE the [Quick Start](https://cloud.google.com/genomics/quickstart) to run a pipeline that uses the Pipelines API to create an index file (BAI file) from a large binary file containing DNA sequences (BAM file)

 -----

### 📺 Click to see Lynn's 4 minute exploration of this section  
[![GCP Genomics Pipelines API for Bioinformatics](http://img.youtube.com/vi/B8RABR19n8Y/0.jpg)](http://www.youtube.com/watch?v=B8RABR19n8Y "GCP Genomics Pipelines API for Bioinformatics")

### How to verify you've done it
 - Run your analysis, monitor for correct results (view files in your output bucket)
 - Monitor for service cost, execution time and adjust to meet your requirements


### Other Things to Know
 - Google Life Sciences API is still called Google Pipelines/Genomics API in some of the documentation
 - There are two major versions of the this API - v1 and v2
 - The pipeline can run with unaligned BAM files stored in Cloud Storage
    - If your files are in an aligned BAM or FASTQ format, then you must convert them to BAM
    - You can convert your input files locally, or you can use the Life Sciences API to convert them in the cloud
 - There are a number of bioinformatics libraries (cromwell, Nextflow....) that are designed to work WITH Life Sciences API

### How to learn more
 - 📘 read Google Cloud Life Sciences API reference architecture - [link](https://cloud.google.com/solutions/genomic-data-processing-reference-architecture)
 - 📘 read Google Cloud Life Sciences scenarios - [link](https://cloud.google.com/genomics/docs/tutorials/)
 - :octocat: 4 GCP Life Sciences API examples in Jupyter notebooks - [link](https://github.com/googlegenomics/datalab-examples/tree/master/datalab/genomics)
 - 📘 use QwikLabs to try out Google Cloud Life Sciences API - [link](https://www.qwiklabs.com/focuses/589?parent=catalog)
 - :octocat: see example Life Sciences API usage with genomics tools - [link](https://github.com/googlegenomics/pipelines-api-examples)
 - 📘 read End-to-end pipeline patterns and documentation - see the Google Genomics Cookbook -- http://googlegenomics.readthedocs.io/en/latest/
 - 📘 see Google Cloud Life Sciences includes a number of Google Cloud services, such as Compute Engine, Dataflow, BigQuery and more.  A reference architecture is shown below.  See the [Google Life Sciences](https://cloud.google.com/life-sciences/) documentation for more information.

 [![life-sciences](/images/life-sciences.png)]()
