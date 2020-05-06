# Use Nextflow for Pipelines

### Why do this
 USE the Nextflow pipeline language to define and run your analysis workflow

### What is this
 Nextflow is a reactive workflow framework & DSL for writing data-intensive computational pipelines.  Run jobs on GCE Virtual Machines or GCE/Pipelines using container images.
 - Nextflow can run on GCP or many other providers
 - Nextflow can run on GCP in two ways:
   - Run jobs on Compute Engine VMs (can run bioinformatics tools from Docker)
   - Run jobs on Compute Engine VMS **& Life Sciences (Genomics Pipelines) API**

### Key considerations
- Understand core Nextflow features - [link](https://www.nextflow.io/index.html#Features)


### How to do this
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
 - Short example using Nextflow and the blastn tool, running in Docker on a custom GCE VM image - [link](https://medium.com/@lynnlangit/cloud-native-hello-world-for-bioinformatics-7831aecc8d1a)
 - Use Nextflow pipelines with other cloud vendors: AWS - [link](https://www.nextflow.io/docs/latest/awscloud.html)
 - Get and run example Nextflow bioinformatics pipelines (such as one for 'rnaseq jobs') at the nf-core site - [link](https://nf-co.re/rnaseq/docs)
 - Monitor running Nextflow pipelines using the visual Nextflow Tower tool - [link](https://tower.nf/)
 - Register Nextflow workflows for distribution and reuse in [Dockstore](https://docs.dockstore.org/docs/prereqs/getting-started-with-nextflow/) 
 - Note that Nextflow on Dockstore is a bit different from CWL or WDL. Instead of having one type of descriptor file, Nextflow with Dockstore uses two different kinds of files: A config file, `nextflow.config` and a descriptor file, often, `main.nf`.
 - Use The Broad's GATK 4 with Nextflow.io use this command `nextflow run CRG-CNAG/CalliNGS-NF -r gatk4 -with-docker`
 - Understand that Nextflow is written in the [Groovy programming language](https://en.wikipedia.org/wiki/Apache_Groovy) & is designed to run on [JVM](https://en.wikipedia.org/wiki/Java_virtual_machine) instances 
 

### How to learn more

#### General Nextflow
 - 📘 Link to [Nextflow code patterns](http://nextflow-io.github.io/patterns/index.html)
 - 📘 Read about [Pipeliner for Nextflow paper](https://www.biorxiv.org/content/biorxiv/early/2018/11/23/476515.full.pdf)
 - 📺 Watch Nextflow presentations - [link](https://www.nextflow.io/presentations.html)
 - 📘 Link to [using caching with Nextflow](https://www.nextflow.io/blog/2019/demystifying-nextflow-resume.html)
#### Nextflow on GCP
 - 📘 Link to [Nextflow on GCP](https://www.nextflow.io/docs/latest/google.html)
 - 📘 Link to [Nextflow on GCP Life Sciences API tutorial](https://cloud.google.com/life-sciences/docs/tutorials/nextflow)
   - **TIP**: If you are doing this tutorial create a GCS bucket name with letters or numbers only (no underscores or '_')
 - :octocat: Review featured Nextflow pipelines - [link](https://github.com/nextflow-io/awesome-nextflow)
 - 📘 Link to [using GCP Cloud Life Sciences API with Nextflow](https://www.nextflow.io/docs/edge/google.html#cloud-life-sciences)

  
