# Use Terra.bio Workflows

### Why do this

 - Use bioinformatics tools (GATK, Hail...) & workflows on GCP
 - Run scalable analysis on GCP without manually configuring Cloud Storage & VMs (or container clusters)
 - Read - [Getting Stated with GATK via Terra Workspaces](https://software.broadinstitute.org/gatk/blog?id=24102)
 - Terra's key capabilities are shown below 

 [![terra-features](/images/terra-features.png)]()


### What is this
 
 - Use standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) or [Hail](https://hail.is/) to perform your analysis at scale.  GATK concepts are shown below
 - See also [GATK Dictionary](https://software.broadinstitute.org/gatk/documentation/topic?name=dictionary) for definitions of key terms 

 [![gatk-concepts](/images/gatk-concepts.png)]()
 - Use best-practice workflows for bioinformatics that run on pre-configured GCP services (VMs and storage buckets)
 - This article covers the potential ways of running analysis on GCP for the items highlighted in RED SQUARES shown below

[![terra](/images/terra.png)]()


### Key considerations
- Implement Terra best practice workflows --or--
- Create your own tools and workflows   
    - Create docker containers for your custom scripts or tools
    - Write WDL scripts for your custom tools / workflows 
- Configure input data and output data for both pre-created and custom workflows
- Consider costs 
    - Terra workflows use resources from GCP and The Broad Institute 
    - From GCP, Terra uses Compute Engine, Google Pipelines/Genomics API, Cloud Storage and other services

### How to do this

See example screenshots below for Terra Workflows.    
- **LOGIN** -> 
  - Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - You can use $300 USD in GCP credit when you first try out Terra
- **SELECT DATA** -> 
  - use reference public data (Terra Library -> Data)
  - upload your own research data for analysis (Your Terra Workspace -> Data Section)
  - refer to data in Cloud Storage (use gs://{mybucket}/{my folder}) in your job parameters
- **IMPORT or CREATE WORKFLOW** ->  
  Import (or clone) and configure an existing workflow from Terra or from Dockstore.  Alternatively, you can create and configure your own workflow.

  - Run a [blastn WDL workflow](https://dockstore.org/workflows/dockstore.org/lynnlangit@gmail.com/blastn:5?tab=info) registered in Dockstore on a Terra Workspace.  See Dockstore screen below.

  [![dockstore](/images/dockstore.png)](https://dockstore.org/workflows/dockstore.org/lynnlangit@gmail.com/blastn:5?tab=info)
   

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
    - clone an existing workflow or import a workflow (using **'Find a Tool'**) that you created from Dockstore or Broad Methods Repository, shown below  
     - add your data  
     - configure the workflow / tool - shown below  
     - click 'run analysis'  
     - review job history - shown below   

  Click 'Find a Tool' on the Terra Workflows tab to use tools or workflows that others have created 
   [![find-tool](/images/Find-tool.png)]()
  Configure your workflow or tool in Terra.  This example uses a bamstats workflow from Dockstore 
   [![configure-job](/images/configure-job.png)]()
  Run your job and review the job history in Terra 
   [![verify-job](/images/verify-job.png)]()

### 📺Click to see Lynn's 10 minute exploration of this section  
[![Terra.bio Workflows on GCP for Bioinformatics](http://img.youtube.com/vi/tdpWXYcFSVA/0.jpg)](http://www.youtube.com/watch?v=tdpWXYcFSVA "Terra.bio Workflows on GCP for Bioinformatics")

### Other Things to Know
 - Terra runs on GCE VMs & the GCP Genomics/Pipelines API
 - Terra is the next generation of The Broad Institute's Firecloud tool
 - Terra terms:
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
 - 📺32 minute [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g)
 - Link to [Terra resouces](https://support.terra.bio/hc/en-us)
 - Link to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432)
