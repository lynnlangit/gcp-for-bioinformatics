# Genomic-scale Pipeline Reference Architecture

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/data-lake.png" width=600>

Five key patterns used in creating reproducible genomic-scale cloud analysis pipelines include the following:

1. **Functional programming** for side-effect free parallel processing (rather than OOP)
2. **Use of tools**, such as GATK, Hail, VariantSpark, etc... (rather than scripts) to process the data
3. **Use of Docker** to contain Bioinformatics tools (scripts or jar files) included in one or more docker images for compute (rather than VMs) which expose tool parameters for configuration
4. **Data stored as files in buckets**, this is a Data Lake pattern, storing data as objects (or files). The **Data Lake** pattern (conceptual diagram shown above) is used rather than storing data in relational or NoSQL databases. Some systems, such as Terra.bio include the ability to define a schema 'over' files stored in buckets via a custom data model and is shown below.
5. **Use of domain-specific pipeline configuration languages**, such as WDL, Nextflow, CWL (rather than cloud vendor scripts or templates, such as AWS CloudFormation, or GCP Deployments). These configuration languages enable configuration of both bioinformatics tools and also cloud services (VM size, bucket security...) 

----

## Genomics on GCP

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/gcp-bio-arch.png" width=800>

Core GCP Genomics cloud architecture patterns (diagram above from Google's documentation) - [link](https://cloud.google.com/architecture/genomic-data-processing-reference-architecture). Note that as `Google Batch API` has been released, it will often be used in place of `Life Sciences API`, because Batch has a superset of LS API features.

### DataMesh on GCP for Bioinformatics

Shown below is an example reference architecture for a Data Mesh pattern **using GCP services**. 
- A Data Mesh is a group of Data Lakes
- Each blue icon represents a type of ☁️ GCP service.  
- In this Repo, you'll get information how to get started with the services shown below.  

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/new-main.png" width=1000>

---
