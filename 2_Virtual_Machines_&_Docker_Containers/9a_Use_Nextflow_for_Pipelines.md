# USE Nextflow for Pipelines

Nextflow is a reactive workflow framework (tools, runtime & bioinformatics DSL) for writing data-intensive, scalable pipeline jobs 

- Nextflow pipelines can be run on GCP or many other providers (Amazon Batch, Azure Batch, Google Batch, HPC, Slurm, etc...)
   - REVIEW core Nextflow features - [link](https://www.nextflow.io/index.html#Features)
- The global community of Nextflow users is growing rapidly and is at *'over 100,000 collaborating scientists'*
   - JOIN the Nextflow community - [link](https://community.seqera.io/c/nextflow/5) - see the community site for quick answers to common NF questions
    
### TRY example Nextflow Pipelines
<kbd><img src="https://raw.githubusercontent.com/nf-core/rnaseq/3.14.0//docs/images/nf-core-rnaseq_metro_map_grey.png" width=900></kbd>  
The nf-core/rnaseq Nextflow pipeline (subway map shown above) is a genomics 'hello world' example for testing Nextflow on GCP (and other environments.)

- RUN Nextflow pipelines as configurable jobs on GCP using a variety of GCP services:
   - Quick tests: Run jobs on directly on **cloud shell** or a **single Compute Engine VM**
     - USE sample Nextflow pipelines - see ['Examples' link](https://www.nextflow.io/)
     - USE my samples - see [this folder](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Workflow_Script_Examples/Nextflow-NF) in this Repo for sample NF scripts 
     - TEST a RNAseq pipeline using Compute Engine, Google Batch and Cloud Storage - [link](https://cloud.google.com/batch/docs/nextflow)
     - TEST a VariantCalling pipeline w/GATK - [link](https://github.com/CRG-CNAG/CalliNGS-NF/)
   - Scaled pipelines: Run example rnaSeq jobs on an **elastic cluster of Compute Engine VMs** using the **Google Cloud Batch API**
     - SEE the Google quick start at [link](https://cloud.google.com/batch/docs/nextflow)
     - RUNS example [nf-core rnaseq](https://nf-co.re/rnaseq/3.14.0) pipeline (subway map image of this pipeline, from nf-core website, shown below)
     - SEE my updated version of Google's quickstart described (Medium article) at [link](https://medium.com/@lynnlangit/real-world-nextflow-on-gcp-c27c87e100d6), uses cloud shell as a job invoker.
     - READ Seqera blog post on running rnaSeq pipeline on Google Batch at [link](https://www.nextflow.io/blog/2023/nextflow-with-gbatch.html)
   - Highly tuned pipelines: Run pipelines on customized GKE (**Kubernetes**) clusters
      - BLOG: "The State of Kubernetes in Nextflow" - [link](https://nextflow.io/blog/2023/the-state-of-kubernetes-in-nextflow.html)
      - NOTE: This approach commonly requires a TEAM of infrastructure engineers to implement properly.
    


 ---
 
### 📺 Click to see Lynn's 4 minute exploration of this section  
[![Nextflow on GCP for Bioinformatics](http://img.youtube.com/vi/YtUOCMiC7Dk/0.jpg)](http://www.youtube.com/watch?v=YtUOCMiC7Dk "Nextflow on GCP for Bioinformatics")

---

### How to Verify Nextflow Pipeline Job Runs

It is helpful to use a very simple Nextflow script to test environment setup.  Linked below is a very short Nextflow script that you can use for testing.  

 - VERIFY using a short example script - [link](https://gist.github.com/lynnlangit/c1ed2a3535b3ae6711dd14687d5174c3), uses two BASH processes (tasks), use for quick env verification.
 - VERIFY the output files from the examples above
 - REVIEW Nextflow examples which produce files in a `results` folder

### Other Things to Know
 - RUN short example using Nextflow and the `blastn` tool, running in Docker on a custom GCE VM image - [link](https://medium.com/@lynnlangit/cloud-native-hello-world-for-bioinformatics-7831aecc8d1a)
 - USE Nextflow pipelines with other cloud vendors: AWS - [link](https://www.nextflow.io/docs/latest/awscloud.html)
 - FIND and run example Nextflow bioinformatics pipelines (such as one for 'rnaseq jobs') at the `nf-core` site - [link](https://nf-co.re/rnaseq/)
 - REVIEW Nextflow jobs run resource usage with the REPORTS feature.  Use this syntax `nextflow run <pipeline> -with-report [file name]` - [link](https://www.nextflow.io/docs/latest/reports.html)
 - MONITOR running Nextflow pipelines using the visual `Seqera Nextflow Tower` tool - [link](https://tower.nf/)
 - REGISTER Nextflow workflows for distribution and reuse in the [Dockstore](https://docs.dockstore.org/en/stable/getting-started/getting-started-with-nextflow.html) genomics workflow registry
    - Note that Nextflow (NF) on Dockstore is a bit different from CWL or WDL. 
    - Instead of having one workflow descriptor file, Nextflow with Dockstore uses two different kinds of files: A config file, `nextflow.config` and a descriptor file, generally called, `main.nf`.
---
 
### How to learn more

Shown below is a one version of a reference architecture for running Nextflow analysis on GCP using the Google Batch API.  This version uses persistent GCE (VMs) as 'head nodes' in a Slurm-like approach.  It is possible to use other methods to launch nextflow workflows on GCP, such as replace the 'head nodes' with Cloud Functions.  

<kbd>![Nextflow Architecture using GCP Batch API](/images/nf-gcp.png)</kbd>

#### General Nextflow
 - 📘 Link to [Nextflow training](https://training.nextflow.io/)
 - 📘 Link to [Nextflow guide](https://www.nextflow.io/blog/2020/learning-nextflow-in-2020.html)
 - 📘 Link to [Nextflow code patterns](http://nextflow-io.github.io/patterns/index.html)
 - 📘 Link to [Awesome Nextflow links](https://github.com/nextflow-io/awesome-nextflow)
 - 📺 Watch Nextflow presentations - [link](https://www.nextflow.io/presentations.html)
 - 🗄️ Link to [Nextflow test datasets](https://github.com/nf-core/test-datasets)

#### Nextflow on GCP Documentation - including my articles on this topic too!
 - 📘 Link to [Nextflow on GCP](https://www.nextflow.io/docs/latest/google.html)
 - 📘 Link to [Nextflow on GCP Cloud Batch rnaSeq example](https://nextflow.io/blog/2023/nextflow-with-gbatch.html) - [NF docs](https://www.nextflow.io/docs/latest/google.html#cloud-batch)
 - 📘 Link to [Nextflow: from HPC to Cloud(GCP)](https://seqera.io/blog/nextflow-from-hpc-to-cloud/)
 - 📘 Link to [Building Containers for Nextflow: spaFlow Example](https://medium.com/@lynnlangit/bioinformatics-building-blocks-65fb62222759)

#### Nextflow Pipeline Patterns and Examples
 - 📘 Huge list of [Learn Nextflow links](https://www.nextflow.io/blog/2022/learn-nextflow-in-2022.html)
 - :octocat: Link to [Example Nextflow pipelines and programming techniques](https://github.com/stevekm/nextflow-demos) - short NF code samples
 - 📘 Read about [Pipeliner for Nextflow paper](https://www.biorxiv.org/content/biorxiv/early/2018/11/23/476515.full.pdf)
 - 📘 Link to [using caching with Nextflow](https://www.nextflow.io/blog/2019/demystifying-nextflow-resume.html)
 - 📘 Link to paper on [containerized approaches to workflows(includes Nextflow)](https://www.preprints.org/manuscript/202001.0378/v1/download)
 - 📘 Link to run a NF workflow using The Broad's `GATK 4` tools with Nextflow.io use this command `nextflow run CRG-CNAG/CalliNGS-NF -r gatk4 -with-docker`
 - 📘 Link to understanding that Nextflow architecture.  NF is written in the [Groovy programming language](https://en.wikipedia.org/wiki/Apache_Groovy) & is designed to run on [JVM](https://en.wikipedia.org/wiki/Java_virtual_machine) instances
- 📘 Link to [using Nextflow with ('raw') Kubernetes](https://www.nextflow.io/docs/edge/kubernetes.html)
  
---------

#### Nextflow Tools by Seqera
 - 📘 Link to using [Nextflow Seqera Platform with Google Batch documentation](https://docs.seqera.io/platform/23.2.0/compute-envs/google-cloud-batch)
 - 📘 Link to using [Nextflow cli](https://www.nextflow.io/docs/edge/cli.html) for scripting 
 - 📘 Link to using [Nextflow's Seqera WebUI](cloud.seqera.io) for monitoring - screenshot shown below 
 - 📘 Link to using [Nextflow tracing & viz tools](https://www.nextflow.io/docs/latest/tracing.html)
 - 📘 Link to using [NF protein-DNA interactions and epigenomic profiling pipeline QC testing & viz tools with CI/CD](https://nf-co.re/cutandrun)
 - 📘 Link to using [Nextflow schema validation tool](https://nextflow-io.github.io/nf-schema/latest/)

<kbd><img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/seqera-ui.png" width=800></kbd>



  
