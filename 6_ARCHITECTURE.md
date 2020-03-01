## GCP Genomic Pipeline Reference Architecture


Shown below is a basic pattern for performing genomic analysis jobs (also called pipelines or workflows) on ☁️ GCP. Common  patterns in reproducible genomic-scale data analysis pipelines include the following:
- Functional programming for side-effect free parallel processing (rather than OOP)
- Use of tools, such as GATK, Hail, VariantSpark, etc... (rather than scripts)
- Bioinformatics tools (scripts or jar files) contained in one or more DOCKERFILEs for compute (rather than VMs)
- Data stored as files in buckets, i.e. Data Lake pattern (rather than relational or NoSQL databases) 
- Use of domain-specific pipeline configuration languages, such as WDL, Nextflow, CWL (rather than cloud vendor scripts or templates, such as AWS CloudFormation, or GCP Deployments) 

Each blue icon represents a type of ☁️ GCP service.  In this Repo, you'll get information how to get started with the services shown below.  

[![gcp-bioinformatics](/images/main.png)]() 

---