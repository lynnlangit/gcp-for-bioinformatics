# Use cromwell and WDL for Pipelines


### Why do this
 - You want to use [The Broad Institute's cromwell](https://github.com/broadinstitute/cromwell) orchestration engine to scale your analysis job
 - You want to use [The Broad's WDL (workflow definition language)](https://software.broadinstitute.org/wdl) for cromwell to describe your tool and workflow inputs and outputs
 - Example workfllow shown below

 [![wdl-cromwell](/images/wdl-cromwell.png)]()

### What is this
 - Scaling GCE w/Google Pipelines API, cromwell and WDL
 - Here is the Pipelines API sample (using best practice for [The Broad’s GATK tools](https://software.broadinstitute.org/gatk/)).
  - You have a number of choices - this article covers the items highlighted in RED SQUARES

[![cromwell](/images/cromwell.png)]()

### Key considerations
 - You use cromwell along with Google Pipelines API to manage the GCE (VM) resources for your analysis job
 - You use WDL scripts to configure the workflow inputs and outputs (for each tool used)
 - You use scripts, jar files or docker container images for each tools
 - You use JSON files to configure the input/output values for EACH job execution

### How to do this
 - Run a Broad Institute GATK best practice pipeline on Google Genomics/Pipelines API using WDL and cromwell - l[link](https://cloud.google.com/genomics/docs/tutorials/gatk)

### How to verify you've done it
 - Review the files in the output destinations (CloudStorage buckets) to check they match the expected results
 - Use GCP Stackdriver to monitor the overhead (CPU, memory etc...usage) for the GCE VMs during job executions

### Other Things to Know
 - Link to GATK Best Practice guidlines from The Broad - [link](https://software.broadinstitute.org/gatk/best-practices/)

### How to learn more
 - Link to [run a GATK best practices pipeline](https://cloud.google.com/genomics/docs/tutorials/gatk)
 - Example WDL files for bioinformatics tools - [link](https://github.com/biowdl/tasks)
 - WDL pipeline template examples - [link](https://github.com/biowdl/pipeline-template)