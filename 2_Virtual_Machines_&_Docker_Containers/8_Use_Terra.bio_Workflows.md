# Use Terra.bio Workflows

### Why do this

 - USE bioinformatics tools (GATK, Hail...) in Terra workflows on GCP
 - RUN scalable analysis on GCP without manually configuring Cloud Storage & VMs (or container clusters)
 - READ - [Getting Stated with GATK via Terra Workspaces](https://software.broadinstitute.org/gatk/blog?id=24102)
 - UNDERSTAND job overhead on GCP using Job Manager tools in Terra
 
### What is this
 
 Use Terra workflows for analysis - architecture and flow of researcher actions is shown belown

[![terra-wk-arch](/images/terra-wk-arch.png)]()
 
 Workflows use GCP Virtual Machine and Cloud Storage buckets.  Create your own workflows, or use example, pre-configured workflows. These can implement standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) - shown below, or [Hail](https://hail.is/). Workflows can also use your own custom tools.  
 
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

See example screenshots below for Terra Workflows.    
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
   

### Workflow Screenshots from Terra  

Terra Starter Screen - View Examples or View (Your)Workspaces
 [![terra-start](/images/terra-start.png)]()
Use Best Practice GATK4 Examples or Featured Workspaces
 [![workspaces](/images/workspaces.png)]()
Browse Reference Data
 [![all-data](/images/all-data.png)]()
Select Workflows to configure and run your Analysis Jobs
 [![workspace-menu](/images/workspace-menu.png)]()
 

### How to verify you've done it
 For a Terra Workflow/Tool run do the following:  
    - CLONE an existing workflow or import a workflow (using **'Find a Tool'**) that you created from Dockstore or Broad Methods Repository, shown below  
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

 - Key Terra concepts:
    - **Workspace** -> container for workflow(s)
    - **Workflow** -> container for tool(s) and configuration, written in WDL for cromwell, JSON for parameters
    - **Tool** -> docker container image of your research script or binary tool and configuration in WDL
    - **WDL** -> [workflow definition language](https://software.broadinstitute.org/wdl), dialect required for configuring [cromwell orchestration engine](https://github.com/broadinstitute/cromwell), as in 'a WDL file'
    - **Reference Data** -> reference data, i.e. 1000 Genomes
    - **Workspace Data (model)** -> your research data -> the 'Data' tab in the Terra UI
      More about the Terra Data Model - [link](https://gatkforums.broadinstitute.org/firecloud/discussion/9769/data-model)
      - Participant -> a person enrolled in a study
      - Sample -> a biological sample collected from a participant
      - Pair -> represents a pair of biological samples collected from a participant
      - Set -> group of Participants, Samples or Pairs
    - **Configuration Data** -> WDL and JSON files

[![data-model](/images/data-model.png)]()  
  Image of Terra Data Model from this [link](https://software.broadinstitute.org/firecloud/documentation/quickstart?page=data)


### How to learn more
 - 📘 Link to [Terra resouces](https://support.terra.bio/hc/en-us)
 - 📘 Link to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432)
 - 📺 Watch [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g) - 32 minute video from the Broad  
 - 📙 Try out the Terra workflows using Broad's [Terra quick start workspace](https://app.terra.bio/#workspaces/fc-product-demo/Terra-Workflows-Quickstart) 
 - 📺 Watch [Case study using Terra](https://www.youtube.com/watch?v=xOzwWNLXdHc) - 28 minute video from the Broad covers how they created reproducible research using the results of published work around a condition called "tetralogy of fallot" (congential heart defect). Broad created a synthetic cohort, with NEATkit & BAMsurgeon (genomic data obfuscation tools) and then applied the methods in the paper using Terra workflows (Terra notebook shown below)
  [![terra-repro](/images/terra-repro.png)]()
 - 📙 Try out the Terra notebook and workflows using Broad's [Terra example workspace](https://app.terra.bio/#workspaces/help-gatk/Reproducibility_Case_Study_Tetralogy_of_Fallot) for the example in the screencast shown above
 - 📺 Watch [understanding Terra (GCP service) costs](https://www.youtube.com/watch?v=SRVrzXHkZKU) - 27 minute video from the Broad
 - 📺 Watch [using Docker containers on Terra](https://www.youtube.com/watch?v=jv_HSFBYOJs) - 22 minute video from the Broad Institute
  - See [GATK Dictionary](https://software.broadinstitute.org/gatk/documentation/topic?name=dictionary) for definitions of key terms used in GATK docs
  - 📘 Link to tutorial to learn how to [register a custom bioinformatics tool or workflow](https://docs.dockstore.org/docs/prereqs/) in Dockstore
   - 📘 Link to article to learn how to [request to feature your workspace](https://support.terra.bio/hc/en-us/articles/360033599791-Feature-Your-Workspace-) in Terra