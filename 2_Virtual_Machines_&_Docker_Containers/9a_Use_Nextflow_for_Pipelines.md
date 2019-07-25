# Use Nextflow for Pipelines

### Why do this
 USE the Nextflow pipeline language to define and run your analysis workflow

### What is this
 Nextflow is a reactive workflow framework & DSL for writing data-intensive computational pipelines.  Run jobs on GCE or GCE/Pipelines using container images.
 - Nextflow can run on GCP or many other providers
 - Nextflow can run on GCP in two ways:
   - Run jobs on Compute Engine
   - Run jobs on Compute Engine **& Genomics Pipelines API**

### Key considerations
- Understand core Nextflow features - [link](https://www.nextflow.io/index.html#Features)


### How to do this
 - RUN RNAseq pipeline on GCP cloud shell instance - [link]()
 - RUN RNAseq pipeline on Compute Engine and Cloud Storage - [link](https://cloud.google.com/genomics/docs/tutorials/nextflow)
 - RUN VariantCalling pipeline w/GATK - [link](https://github.com/CRG-CNAG/CalliNGS-NF/)
 ---
  ### 📺 Click to see Lynn's 4 minute exploration of this section  
[![Nextflow on GCP for Bioinformatics](http://img.youtube.com/vi/YtUOCMiC7Dk/0.jpg)](http://www.youtube.com/watch?v=YtUOCMiC7Dk "Nextflow on GCP for Bioinformatics")

-----

Nextflow RNAseq Dockerfile - uses bowtie, cufflinks and tophat tools
 [![nextflow-docker](/images/nextflow-docker.png)](https://github.com/nextflow-io/rnatoy/blob/master/Dockerfile)

 Nextflow RNAseq Nextflow file - runs tools from above
 [![nextflow-rnaseq](/images/nextflow-rnaseq.png)](https://www.nextflow.io/example4.html)


### How to verify you've done it
 - VERIFY the output files from the examples above
 - REVIEW Nextflow examples whic produce files in a `results` folder



### Other Things to Know
 - Test Netflow pipelines on your local machine or on GCP cloud shell 
 - Use Nextflow pipelines with other cloud vendors: AWS - [link](https://www.nextflow.io/docs/latest/awscloud.html)
 - Nextflow is written in the [Groovy programming language](https://en.wikipedia.org/wiki/Apache_Groovy) & is designed to run on [JVM](https://en.wikipedia.org/wiki/Java_virtual_machine) instances 
 - Nextflow workflows can be registered in [Dockstore](https://docs.dockstore.org/docs/prereqs/getting-started-with-nextflow/) for use as workflows
 - Nextflow on Dockstore is a bit different from CWL or WDL. Instead of having one type of descriptor file, Nextflow with Dockstore uses two different kinds of files: A config file, `nextflow.config` and a descriptor file, often, `main.nf`.
 

### How to learn more
 - 📘 Link to [Nextflow on GCP](https://www.nextflow.io/docs/latest/google.html)
 - :octocat: Review featured Nextflow pipelines - [link](https://github.com/nextflow-io/awesome-nextflow)
 - 📘 Read about [Pipeliner for Nextflow paper](https://www.biorxiv.org/content/biorxiv/early/2018/11/23/476515.full.pdf)
 - 📺 Watch Nextflow presentations - [link](https://www.nextflow.io/presentations.html)