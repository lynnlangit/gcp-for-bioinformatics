# Use Nextflow for Pipelines

### Why do this
- USE the Nextflow pipeline language, tools and runtime to define and run your analysis workflow at scale by writing your code with a bioinformatics DSL.  
- REVIEW core Nextflow features - [link](https://www.nextflow.io/index.html#Features)
- USE samples - see [this folder](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Workflow_Script_Examples/Nextflow-NF) in this Repo for sample NF scripts

### What is this
 Nextflow is a reactive workflow framework & DSL for writing data-intensive computational pipeline jobs.    
 - Nextflow can run on GCP or many other providers (AWS, Slurm, etc...)
 - Nextflow can run on GCP in two ways (eaisiest to launch jobs from `cloud shell` during testing):
   - Run jobs on a **single Compute Engine VM** 
   - Run jobs on an **elastic cluster of Compute Engine VMs** using the **Cloud Batch API**
     - quick start at [link](https://cloud.google.com/batch/docs/nextflow)
     - runs example [nf-core rnaSeq](https://nf-co.re/rnaseq/3.14.0) pipeline (subway map image of this pipeline, from nf-core website, shown below)
     - my updated version of Google's quickstart described (Medium article) at [link](https://medium.com/@lynnlangit/real-world-nextflow-on-gcp-c27c87e100d6)
    
<kbd><img src="https://raw.githubusercontent.com/nf-core/rnaseq/3.14.0//docs/images/nf-core-rnaseq_metro_map_grey.png" width=900></kbd>

### How to do this
 - TRY out a couple of simple NF workflows with ZERO set up
   - Use GCP Cloud Shell and the main tutorials - ['Examples' link](https://www.nextflow.io/) 
 - TRY more sample workflows on a single GCE VM  
   - SETUP prereqs for Nextflow on your VM - JDK, Docker, Graphviz(optional)
   - RUN RNAseq example pipeline on Compute Engine and Cloud Storage - [link](https://cloud.google.com/genomics/docs/tutorials/nextflow)
   - RUN VariantCalling pipeline w/GATK - [link](https://github.com/CRG-CNAG/CalliNGS-NF/)
 ---
 
### 📺 Click to see Lynn's 4 minute exploration of this section  
[![Nextflow on GCP for Bioinformatics](http://img.youtube.com/vi/YtUOCMiC7Dk/0.jpg)](http://www.youtube.com/watch?v=YtUOCMiC7Dk "Nextflow on GCP for Bioinformatics")

---

### How to verify you've done it
 - VERIFY using a short example script - [link](https://gist.github.com/lynnlangit/c1ed2a3535b3ae6711dd14687d5174c3), uses two BASH processes (tasks), use for quick env verification.
 - VERIFY the output files from the examples above
 - REVIEW Nextflow examples which produce files in a `results` folder

### Other Things to Know
 - RUN short example using Nextflow and the `blastn` tool, running in Docker on a custom GCE VM image - [link](https://medium.com/@lynnlangit/cloud-native-hello-world-for-bioinformatics-7831aecc8d1a)
 - USE Nextflow pipelines with other cloud vendors: AWS - [link](https://www.nextflow.io/docs/latest/awscloud.html)
 - FIND and run example Nextflow bioinformatics pipelines (such as one for 'rnaseq jobs') at the `nf-core` site - [link](https://nf-co.re/rnaseq/)
 - MONITOR running Nextflow pipelines using the visual `Nextflow Tower` tool - [link](https://tower.nf/)
 - REGISTER Nextflow workflows for distribution and reuse in the [Dockstore](https://docs.dockstore.org/en/stable/getting-started/getting-started-with-nextflow.html) genomics workflow registry
    - Note that Nextflow (NF) on Dockstore is a bit different from CWL or WDL. 
    - Instead of having one workflow descriptor file, Nextflow with Dockstore uses two different kinds of files: A config file, `nextflow.config` and a descriptor file, generally called, `main.nf`.
---
 
### How to learn more

Shown below is a one version of a reference architecture for running Nextflow analysis on GCP using the Google Batch API.  This version uses persistent GCE (VMs) as 'head nodes' in a Slurm-like approach.  It is possible to use other methods to launch nextflow workflows on GCP, such as replace the 'head nodes' with Cloud Functions.  

![Nextflow Architecture using GCP Batch API](/images/nf-gcp.png)

#### General Nextflow
 - 📘 Link to [Nextflow training](https://training.nextflow.io/)
 - 📘 Link to [Nextflow guide](https://www.nextflow.io/blog/2020/learning-nextflow-in-2020.html)
 - 📘 Link to [Nextflow code patterns](http://nextflow-io.github.io/patterns/index.html)
 - 📘 Link to [Awesome Nextflow links](https://github.com/nextflow-io/awesome-nextflow)
 - 📺 Watch Nextflow presentations - [link](https://www.nextflow.io/presentations.html)
 - 🗄️ Link to [Nextflow test datasets](https://github.com/nf-core/test-datasets)

#### Nextflow Pipeline Patterns and Examples
 - 📘 Huge list of [Learn Nextflow links](https://www.nextflow.io/blog/2022/learn-nextflow-in-2022.html)
 - 📘 Read about [Pipeliner for Nextflow paper](https://www.biorxiv.org/content/biorxiv/early/2018/11/23/476515.full.pdf)
 - 📘 Link to [using caching with Nextflow](https://www.nextflow.io/blog/2019/demystifying-nextflow-resume.html)
 - 📘 Link to paper on [containerized approaches to workflows(includes Nextflow)](https://www.preprints.org/manuscript/202001.0378/v1/download)
 - 📘 Link to run a NF workflow using The Broad's `GATK 4` tools with Nextflow.io use this command `nextflow run CRG-CNAG/CalliNGS-NF -r gatk4 -with-docker`
 - 📘 Link to understanding that Nextflow architecture.  NF is written in the [Groovy programming language](https://en.wikipedia.org/wiki/Apache_Groovy) & is designed to run on [JVM](https://en.wikipedia.org/wiki/Java_virtual_machine) instances 

#### Nextflow Tools by Seqera
 - 📘 Link to using [Nextflow cli](https://www.nextflow.io/docs/edge/cli.html) for scripting 
 - 📘 Link to using [Nextflow's Seqera WebUI](cloud.seqera.io) for monitoring - screenshot shown below 
 - 📘 Link to using [Nextflow tracing & viz tools](https://www.nextflow.io/docs/latest/tracing.html)
 - 📘 Link to using [NF protein-DNA interactions and epigenomic profiling pipeline QC testing & viz tools with CI/CD](https://nf-co.re/cutandrun)
 - 📘 Link to using [Nextflow schema validation tool](https://nextflow-io.github.io/nf-schema/latest/)

<kbd><img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/seqera-ui.png" width=800></kbd>

#### Nextflow on GCP
 - 📘 Link to [Nextflow on GCP](https://www.nextflow.io/docs/latest/google.html)
 - 📘 Link to [Nextflow on GCP Cloud Batch rnaSeq example](https://nextflow.io/blog/2023/nextflow-with-gbatch.html) - [NF docs](https://www.nextflow.io/docs/latest/google.html#cloud-batch)
 - :octocat: Review featured Nextflow pipelines - [link](https://github.com/nextflow-io/awesome-nextflow)
 - 📘 Link to [using GCP Cloud Life Sciences API with Nextflow](https://www.nextflow.io/docs/edge/google.html#cloud-life-sciences)
 - 📘 Link to [using Nextflow with Kubernetes](https://www.nextflow.io/docs/edge/kubernetes.html) 

  
