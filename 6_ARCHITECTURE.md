## Genomic-scale Pipeline Reference Architecture

Five key patterns used in creating reproducible genomic-scale cloud analysis pipelines include the following:

1.  **Functional programming** for side-effect free parallel processing (rather than OOP)

2. **Use of tools**, such as GATK, Hail, VariantSpark, etc... (rather than scripts) to process the data

3. **Use of Docker** to contain Bioinformatics tools (scripts or jar files) included in one or more docker images for compute (rather than VMs) which expose tool parameters for configuration

4. **Data stored as files in buckets**, this is a Data Lake pattern, storing data as objects (or files). The **Data Lake** pattern is used rather than storing data in relational or NoSQL databases. Some systems, such as Terra.bio include the ability to define a schema 'over' files stored in buckets via a custom data model and is shown below.

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/data-lake.png" width=600>

5. **Use of domain-specific pipeline configuration languages**, such as WDL, Nextflow, CWL (rather than cloud vendor scripts or templates, such as AWS CloudFormation, or GCP Deployments). These configuration languages enable configuration of both bioinformatics tools and also cloud services (VM size, bucket security...) 

----
Shown below is an example reference architecture for a Data Lake pattern **using GCP services**.  

Each blue icon represents a type of ☁️ GCP service.  In this Repo, you'll get information how to get started with the services shown below.  

[![gcp-bioinformatics](/images/main.png)]() 

---
