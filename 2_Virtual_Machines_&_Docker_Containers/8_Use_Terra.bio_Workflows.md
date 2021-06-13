# Use Terra.bio Workflows

### Why do this

 - USE bioinformatics tools (GATK, Hail...) in Terra workflows on GCP
 - RUN **scalable** analysis on GCP without manually configuring Cloud Storage & VMs (or container clusters)
 - READ "Getting Stated with GATK via Terra Workspaces" - [link](https://support.terra.bio/hc/en-us/articles/360046095192-The-workspace-your-dedicated-project-space-on-Terra)
 - UNDERSTAND the GCP services used for your workflow (analysis) job using Terra Job Manager tools
 
### What is this
 
 Use Terra workflows for scaling your analysis - architecture and flow of researcher actions is shown belown

[![terra-wk-arch](/images/terra-wk-arch.png)]()
 
 Terra Workflows are written with WDL workflow scripts.  Terra implements a persistent cromwell server cluster on GCP.  Terra workflows run using Google Cloud Storage buckets, GCP Virtual Machines and the Cloud Life Sciences API (also called PAPI for pipelines API).    
 
 You can configure existing workflows or create your own workflows.  Terra includes examples - these are runnable pre-configured workflows. Workflows can implement standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) - shown below, or [Hail](https://hail.is/). Workflows can also run your own custom tools or scripts.
 
  [![gatk-concepts](/images/gatk-concepts.png)]()


### Key considerations
- IMPLEMENT Terra best practice workflows --or--
- CREATE your own tools and workflows   
    - CREATE docker containers for your custom scripts or tools
    - WRITE WDL scripts for your custom tools / workflows 
- CONFIGURE input data and output data for both pre-created and custom workflows
- CONSIDER costs 
    - Terra workflows use resources from GCP and The Broad Institute 
    - From GCP, Terra uses Compute Engine, Google Pipelines/Genomics API, Cloud Storage and other services
    - Terra includes a UI called `Job Manager` that helps you understand the overhead on GCP of running your jobs

### How to do this
 
- **LOGIN** -> 
  - NAVIGATE to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - USE $300 USD in GCP credit when you first try out Terra
- **SELECT DATA** -> 
  - USE reference public data (Terra Library -> Data)
  - UPLOAD your own research data for analysis (Your Terra Workspace -> Data Section)
  - REFER to data in Cloud Storage (use gs://{mybucket}/{my folder}) in your job parameters
- **IMPORT or CREATE WORKFLOW** ->  
  IMPORT (or clone) and configure an existing workflow from Terra or from [Dockstore](https://dockstore.org/).  Alternatively, you can create and configure your own workflow.

  - RUN a [blastn WDL workflow](https://dockstore.org/workflows/dockstore.org/lynnlangit@gmail.com/blastn:5?tab=info) registered in Dockstore on a Terra Workspace.  See Dockstore screen below.

  [![dockstore](/images/dockstore.png)](https://dockstore.org/workflows/dockstore.org/lynnlangit@gmail.com/blastn:5?tab=info)  
-----

### 📺 Click to see Lynn's 10 minute exploration of this section  
[![Terra.bio Workflows on GCP for Bioinformatics](http://img.youtube.com/vi/tdpWXYcFSVA/0.jpg)](http://www.youtube.com/watch?v=tdpWXYcFSVA "Terra.bio Workflows on GCP for Bioinformatics")

----

### How to verify you've done it

 For a Terra Workflow/Tool run do the following:  
    - CLONE an existing workflow or import a workflow (using **'Find a Workflow'**) that you created from Dockstore or Broad Methods Repository, shown below  
     - ADD your data  
     - CONFIGURE the workflow / tool - shown below  
     - CLICK 'run analysis'  
     - REVIEW job history - shown below   

  Click 'Find a Tool' on the Terra Workflows tab to use tools or workflows that others have created 
   [![find-tool](/images/Find-tool.png)]()
  Configure your workflow or tool in Terra.  This example uses a bamstats workflow from Dockstore 
   [![configure-job](/images/configure-job.png)]()
  Run your job and review the job history in Terra 
   [![verify-job](/images/verify-job.png)]()


### Other Things to Know

Terra runs on GCE VMs & the GCP Genomics/Pipelines API.
Terra is the next generation of The Broad Institute's Firecloud tool. Shown below is a conceptual diagram of a Terra workspace.  
 [![terra-concepts](/images/terra-concepts.png)]()

---

 - Key Terra concepts:
  [![terra-bucket-name](/images/bucket-name.png)]()
    - **Workspace** -> container for WDL workflow(s), Jupyter notebooks and your data (research and reference).  Your data, which includes your input data as well as your job run output data, is stored in a GCS bucket.  A GCS bucket (name starts with `fc-nnnnn....`) is generated for each workspace.  You can find that bucket name on the middle right of the first page (Dashboard) of your workspace, as shown above.
    - **Dashboard** -> Wiki describing WDL workflow(s)
    - **Notebooks** -> container for Jupyter notebooks -`*.ipynb` files
    - **Workflows** -> container for tool(s)/scripts (GATK, Hail...) and configuration, written in WDL for cromwell, JSON for parameters  
    - **Tool** -> docker container image of your research script or binary tool and configuration in WDL
    - **WDL** -> [workflow definition language](https://software.broadinstitute.org/wdl), dialect required for configuring [cromwell orchestration engine](https://github.com/broadinstitute/cromwell), as in 'a WDL file'
    - **Data** -> there are serveral types of data, when you create a workspace Terra creates an associated GCS bucket (name starts with `gs://fc-nnnnnn-nnnnnn-nnnnn...` . Also you can reference data in any GCS bucket to which you assign GCS IAM permissions (i.e. `gs://<myBucket>/...`) 
      - **Table Inputs** -> this is the data (files) that you will be analyzing in your pipeline, both WDL inputs and outputs
        - You can reference your data using the path to your GCS bucket, (i.e. `gs://<bucketName>/<fileName>) --or--
        - You can reference your data using a pointer to your GCS bucket path, i.e. (`this.myInputFile`, `this.myOutputFile`)
        - More about the Terra Data Inputs Model - [link](https://gatkforums.broadinstitute.org/firecloud/discussion/9769/data-model)
          - Participant -> a person enrolled in a study
          - Sample -> a biological sample collected from a participant
          - Pair -> represents a pair of biological samples collected from a participant
          - Set -> group of Participants, Samples or Pairs
      - **Reference Data** -> genomic reference data, i.e. `b37human` or `hg38`
      - **Workspace Data** -> workspace parameters, i.e. path to dockerfile, variable values, etc..., i.e. (`worskpace.myDocker`), in the form of a single `*.tsv` file.  NOTE: all variable values are strongly typed.  Workspace data types are a subset of WDL data types (ex. Workspace `string` can be WDL `File` or `String`) - see WDL documentation for detail - [link](https://github.com/openwdl/wdl/blob/master/versions/1.0/SPEC.md#types)
      - **Workflow Data** -> WDL script files (i.e. `myWorkflow.wdl`) & workflow parameter configuration (i.e. `input.json`) files

[![data-model](/images/data-model.png)]()  
  Image of Terra Data Model from this [link](https://software.broadinstitute.org/firecloud/documentation/quickstart?page=data)

---  

## How to learn more

### Using Terra 
- 📺 Watch [Terra in a Nutshell](https://www.youtube.com/watch?v=hj0SGlVb4H0) - 2 minute video from the Broad
- 📺 Watch [use a MindMap to understand where data is stored on GCP with Terra](https://www.youtube.com/watch?v=tYmJ2n8YqNc) - 20 minute video covering GCP services (GCS and BigQuery) with Terra
- 📺 Watch [understanding Terra (GCP service) costs](https://www.youtube.com/watch?v=SRVrzXHkZKU) - 27 minute video from the Broad
- 📘 Link to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432)
- 📘 Link to [Terra support forums](https://support.terra.bio/hc/en-us)
- 📘 Link to [GATK Dictionary](https://software.broadinstitute.org/gatk/documentation/topic?name=dictionary) for definitions of key terms used in GATK docs

### Using Terra Workflows

#### Getting Started
- 📺 Watch [Terra Workflow Quickstart](https://www.youtube.com/watch?v=rUBrJNqLyfU) - 3 short videos (each ~ 5 min) showing how to run the Terra Workflow Quickstart 
- 📺 Watch [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g) - 32 minute video from the Broad  
- 📙 Try out the Terra workflows using Broad's [Terra Workflows QuickStart workspace](https://app.terra.bio/#workspaces/fc-product-demo/Terra-Workflows-Quickstart) 
- 📺 Watch short [using Terra](https://www.youtube.com/channel/UCkXAqpR5Hk1ZmNd2-1K2l5Q/videos) screencasts by the Broad
- 📺 Watch [using Docker containers on Terra](https://www.youtube.com/watch?v=jv_HSFBYOJs) - 22 minute video from the Broad Institute
- 📙 Try out the Terra workflows using Broad's [Genomics-in-the-cloud workspace](https://app.terra.bio/#workspaces/help-gatk/Genomics-in-the-Cloud-v1) 
- 📺 Watch short video showing how to import existing workflows into Terra from Dockstore or by [directly uploading WDL files](https://www.youtube.com/watch?v=VtKlYqWBW6A)


#### Learning More

- 📘 Link to article -[7 things I learned while reprocessing my WGS data on Terra: part 1](https://genomedad.com/2021/06/13/7-things-i-learned-while-reprocessing-my-wgs-data-on-terra-part-1/)
- 📺 Watch [Case study using Terra](https://www.youtube.com/watch?v=xOzwWNLXdHc) - 28 minute video from the Broad covers how they created reproducible research using the results of published work around a condition called "tetralogy of fallot" (congential heart defect). Broad created a synthetic cohort, with NEATkit & BAMsurgeon (genomic data obfuscation tools) and then applied the methods in the paper using Terra workflows (Terra notebook shown below)
  [![terra-repro](/images/terra-repro.png)]()
- 📘 Link to tutorial to learn how to [register a custom bioinformatics tool or workflow](https://docs.dockstore.org/docs/prereqs/) in Dockstore
- 📘 Link to article to learn how to [save on storage costs by deleting intermediate workflow outputs](https://terra.bio/deleting-intermediate-workflow-outputs) in Terra
- 📘 Link to article to learn how to [request to feature your workspace](https://support.terra.bio/hc/en-us/articles/360033599791-Feature-Your-Workspace-) in Terra
- 📙 Try out the Terra notebook and workflows using Broad's [Terra example workspace](https://app.terra.bio/#workspaces/help-gatk/Reproducibility_Case_Study_Tetralogy_of_Fallot) for the example in the screencast shown above
- 📘 Creating a Galaxy Project instance on Terra -[link](https://support.terra.bio/hc/en-us/articles/360050566271-Galaxy-interactive-environments)
- 📘 Creating a R-Studio instance on Terra -[link](https://terra.bio/try-rstudio-in-terra/)
