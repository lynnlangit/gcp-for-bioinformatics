# Use WDL (Workflow Definition Language) 


### Why do this
- USE these open source tools to run genomic analysis jobs **at scale in your choice of location (cloud, HPC...)**
- USE [cromwell - an orchestration engine](https://github.com/broadinstitute/cromwell) to run your WDL analysis job(s) on the public cloud or on other locations (i.e. HPC...). 
   - cromwell works with WDL and other languages (CWL) and can be run on multiple execution environments. 
   - conceptual diagram shown below
- USE [WDL -  a workflow definition language](https://software.broadinstitute.org/wdl) to define and configure cromwell workflows.
   - Use WDL scripts to configure your workflow tasks(tools) AND input/outputs files. Examples of configurable tools include GATK, Hail, Picard and others
   - Use WDL scripts to configure execution environments (i.e. local, public cloud...) & resources allocated for each execution.  Examples of configurable resources include Docker container image locations, task batch sizes, VM configuration (CPU, RAM, pre-emptible..) and others
   - Find WDL scripts for re-use to scale jobs with **your data** for known analysis types, i.e. single cell epigenomics, viral, germline variant discovery...) using the Dockstore WDL script registry. Example for [The Broad on Dockstore](https://dockstore.org/organizations/BroadInstitute)  
   
---
 
### What is this

Shown below is the relationship between WDL (scripts), cromwell and typical execution environments (data, docker images and compute clusters).

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/raw/master/images/wdl-cromwell.png" width=500 align=right> 

 - Scaling GCE VM instances out (by dynamically adding instances to a cluster as needed) using the Google Life Sciences API, using cromwell. Cromwell orchestrations are defined by WDL scripts. NOTE: Google Life Sciences API was called Google Genomics/Pipelines API previously.
 - NOTE: WDL/Cromwell documentation uses the words 'workflow' or 'pipeline' to define a series of tasks run for an analysis
 - WDL (Workflow Definition Language) script concepts are shown below 
   - READ WDL documentation - [link](https://support.terra.bio/hc/en-us/sections/360007274612-WDL-Documentation)
   - VIEW 'Using WDL' MindMap - [link](https://atlas.mindmup.com/lynnlangit/wdl/index.html)

### Key considerations
 - USE cromwell with Google Life Sciences API to manage the GCE (VM) resources for your analysis job with fewer manual configuaration steps. You define the resources for your cluster of VMs and Life Sciences API starts and stops VMs as needed. You can configure use of pre-emptible VMs to save on service costs as well.
 - USE WDL scripts to configure the workflow inputs and outputs (for each bioinformatics tool used)
 - REFERENCE your scripts, jar files or docker container images for each of the bioinformatics tool used in your workflow
 - USE JSON files to configure the input/output parameters for each tool and also for EACH job execution

### How to do this

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/raw/master/images/wdl-concepts.png" width=500 align=right> 

 - START with this 5 minute intro to cromwell & WDL - [link](https://cromwell.readthedocs.io/en/stable/tutorials/FiveMinuteIntro/)
 - LEARN WDL syntax by example in this set of lessons - [link](https://github.com/openwdl/learn-wdl)
 - [This tutorial](https://wdl-runner.readthedocs.io/en/latest/GettingStarted/TutorialOverview/#tutorial-scenario) shows running a multi-stage workflow on GCP
    - The workflow is **launched** with Google Life Sciences API
    - The workflow is **defined** using WDL
    - The workflow stages are **orchestrated** by cromwell
    - The workflow **runs** on multiple Compute Engine VMs
      - a master node is created for cromwell
      - cromwell submits each workflow stage as one or more **separate pipelines**

### How to verify you've done it
 - REVIEW the files in the output destinations (Cloud Storage buckets) to check they match the expected results
 - USE GCP Cloud Monitoring to monitor the overhead (CPU, memory etc...usage) for the Compute Engine VMs during job executions

### Other Things to Know
 - General GATK tool usage best practice guidlines from The Broad - [link](https://software.broadinstitute.org/gatk/best-practices/)
 - Cromwell workflows can be run in one of two modes:
  - '(run) stand-alone'(to run a single workflow) --or-- 
  - '(server) persistent-mode'(to run multiple workflows)
    - VERIFY the version of Cromwell, WDL and tools when creating workflows (i.e. v50) - [link](https://github.com/broadinstitute/cromwell/releases/download/50/cromwell-50.jar)
    - USE the 'wdl_runner' tool to run/test Cromwell workflows locally - [link](https://github.com/broadinstitute/wdl-runner)
    - USE the Broad's 'WOM tool' to validate WDL workflow syntax - [link](https://github.com/broadinstitute/cromwell/releases/download/50/womtool-50.jar)
    - USE the Broad's Terra platform to run your workflow on a persistent Cromwell server using a web UI - [link](https:/terra.bio)
 - WDL is an open source scripting language. To learn more and see source code, see these links
   - Go to the 'learn-wdl' repo for lessons and example WDL scripts - [link](https://github.com/openwdl/learn-wdl)
   - Go to the 'open-wdl' repo to see the source code for WDL - [link](https://github.com/openwdl/wdl)

### How to learn more

#### Finding WDL Scripts for Reuse
- 📘 RUN example WDL workflows on Terra (on GCP) using the Quickstart Workspace [link](https://app.terra.bio/#workspaces/fc-product-demo/Terra-Workflows-Quickstart)
- :octocat: Example WDL scripts using bioinformatics tools which can be used in workflows - [link](https://github.com/biowdl/tasks) to BioWDL
- :octocat: WDL pipeline (workflow) template examples - [link](https://github.com/biowdl/pipeline-template) to BioWDL template
- :octocat: Source WDL for 5 Dollar Genome Analysis Pipeline - [link](https://github.com/gatk-workflows/five-dollar-genome-analysis-pipeline) includes JSON inputs, all data accessed from GCS public buckets
- :octocat: WARP (WDL Analysis Research Pipelines) - example, optimized WDL pipelines from The Broad - [link](https://broadinstitute.github.io/warp/) - WARP repository is a collection of cloud-optimized pipelines for processing biological data from the Broad Institute Data Sciences Platform and collaborators.
- 📺 Watch short WDL screencasts [YouTube series](https://www.youtube.com/playlist?list=PL4Q4HssKcxYv5syJKUKRrD8Fbd-_CnxTM) to learn more about WDL syntax, playlist is shown below.

![Learn WDL YouTube Playlist](/images/learn-wdl-playlist.png)

#### Best practices for running WDL Workflows

 - 📘 Step-by-step [how to run GATK cromwell pipeline locally and then on GCP](https://software.broadinstitute.org/gatk/documentation/article?id=12521)
 - 📘 Step-by-Step [Medium article "How to set up cromwell on GCP](https://medium.com/@hnawar/cromwell-hello-gcp-833c18df3caf)  
 - 📘 Link to [run a GATK best practices pipeline](https://cloud.google.com/genomics/docs/tutorials/gatk) on GCP
 - 📺 Watch 38 minute [Intro to pipelining platforms](https://www.youtube.com/watch?v=HNONc2cmIO8&t=9s) screencast from the Broad, covers cromwell & WDL
 - 📘 Link to [Google Life Sciences Reference Architecture](https://cloud.google.com/solutions/genomic-data-processing-reference-architecture) using Google Cloud Platform services.  Shown below is a reference architure using `cromwell` running with `Google Cloud Life Sciences API` on GCP  
    [![life-sciences-cromwell](/images/life-sciences-cromwell.png)]()  
    
---
 
#### miniwdl for WDL 
 - :octocat: [miniwdl](https://github.com/chanzuckerberg/miniwdl) - miniwdl provides WDL developer productivity tools, a local runtime implementation, and a foundation for language experimentation in Python 3.6+. It includes the following tools:
    - [miniwdl check](https://github.com/chanzuckerberg/miniwdl#miniwdl-check) - a WDL linter
    - [miniwdl run](https://github.com/chanzuckerberg/miniwdl#miniwdl-run) - Operation is nearly identical to miniwdl cromwell. The invoking user must have permission to control Docker.
 - 📘 [learn miniwdl](https://github.com/openwdl/learn-wdl/tree/master/6_miniwdl_course) - short course with examples and screencasts, how to use miniwdl to run WDL scripts

