# Use Cromwell & WDL for Pipelines

### Why do this
 - You want to use [The Broad Institute's cromwell](https://github.com/broadinstitute/cromwell) orchestration engine to scale your analysis job(s)
 - You want to use [The Broad Institute's WDL (workflow definition language)](https://software.broadinstitute.org/wdl) to configure the cromwell orchestration engine by describing your tool/workflow inputs & outputs  

  <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/raw/master/images/wdl-cromwell.png" width=400 align=right> 

 Conceptual workflow pattern is shown the the right.  Note the use of docker container images as well.  It's common to use bioinformatics tools, such as GATK or Hail with cromwell in pipelines. 

### What is this
 - Scaling Compute Engine w/Google Pipelines API, cromwell orchestration using WDL language
 - WDL (Workflow Definition Language) script concepts are shown below - [link to WDL documentation](https://software.broadinstitute.org/wdl/documentation/quickstart)

[![wdl-concepts](/images/wdl-concepts.png)]()

### Key considerations
 - Use cromwell with Google Pipelines API to manage the GCE (VM) resources for your analysis job
 - Use WDL scripts to configure the workflow inputs and outputs (for each bioinformatics tool used)
 - Reference your scripts, jar files or docker container images for each of the bioinformatics tool used in your workflow
 - Use JSON files to configure the input/output parameters for each tool and also for EACH job execution

### How to do this
 - Get started with this 5 minute intro to cromwell & WDL - [link](https://cromwell.readthedocs.io/en/stable/tutorials/FiveMinuteIntro/)
     - Be sure to put the cromwell jar file and the WDL file in the same directory
     - Verify that the cromwell version in the run command is the same as the version of the jar file you're using
 - [This tutorial](https://wdl-runner.readthedocs.io/en/latest/GettingStarted/TutorialOverview/#tutorial-scenario) shows running a multi-stage workflow on GCP
    - The workflow is **launched** with Google Pipelines API
    - The workflow is **defined** using WDL
    - The workflow stages are **orchestrated** by cromwell
    - The workflow **runs** on multiple Compute Engine VMs
      - a master node is created for cromwell
      - cromwell submits each workflow stage as one or more **separate pipelines**

### How to verify you've done it
 - Review the files in the output destinations (Cloud Storage buckets) to check they match the expected results
 - Use GCP Stackdriver to monitor the overhead (CPU, memory etc...usage) for the Compute Engine VMs during job executions

### Other Things to Know
 - Link to general GATK tool usage best practice guidlines from The Broad - [link](https://software.broadinstitute.org/gatk/best-practices/)
 - Cromwell is runnable in a variety of compute environments, see graphic below

 [![cromwell-others](/images/cromwell-others.png)]()

### How to learn more
 - Step-by-step [run GATK cromwell pipeline locally and then on GCP](https://software.broadinstitute.org/gatk/documentation/article?id=12521)
 - Link to [run a GATK best practices pipeline](https://cloud.google.com/genomics/docs/tutorials/gatk) on GCP
 - Example WDL files for bioinformatics tools - [link](https://github.com/biowdl/tasks) to BioWDL
 - WDL pipeline template examples - [link](https://github.com/biowdl/pipeline-template) to BioWDL template
 - 📺Watch 38 minute [Intro to pipelining platforms](https://www.youtube.com/watch?v=HNONc2cmIO8&t=9s) screencast from the Broad, covers cromwell & WDL
