## Genomic-scale Pipeline Reference Architecture

Five key patterns used in creating reproducible genomic-scale cloud analysis pipelines include the following:

1.  **Functional programming** for side-effect free parallel processing (rather than OOP)

2. **Use of tools**, such as GATK, Hail, VariantSpark, etc... (rather than scripts) to process the data

3. **Use of Docker** to contain Bioinformatics tools (scripts or jar files) included in one or more docker images for compute (rather than VMs) which expose tool parameters for configuration

4. **Data stored as files in buckets**, i.e. Data Lake pattern (rather than in relational or NoSQL databases) 

5. **Use of domain-specific pipeline configuration languages**, such as WDL, Nextflow, CWL (rather than cloud vendor scripts or templates, such as AWS CloudFormation, or GCP Deployments) 

----
Shown below is an example reference architecture using GCP services.

Each blue icon represents a type of ☁️ GCP service.  In this Repo, you'll get information how to get started with the services shown below.  

[![gcp-bioinformatics](/images/main.png)]() 

---