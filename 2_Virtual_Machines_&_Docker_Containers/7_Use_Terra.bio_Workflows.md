# Use Terra.bio Workflows

### Why do this

 - You would like to use bioinformatics tools (GATK, Hail...) & workflows on GCP
 - You would like to run scalable analysis on GCP without manually configuring Cloud Storage & VMs (or container clusters)
 - You'd like to use The Broad Institute's Terra.bio genomics analysis application (browser-based) 
 - Terra's key capabilities are shown below 

 [![terra-features](/images/terra-features.png)]()


### What is this
 
 - Use standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) or [Hail](https://hail.is/) in your analysis.  GATK concepts are shown below

 [![gatk-concepts](/images/gatk-concepts.png)]()
 - Use best-practice workflows for bioinformatics that run on pre-configured GCP services (VMs and storage buckets)
 - This article covers the potential ways of running analysis on GCP for the items highlighted in RED SQUARES shown below

[![terra](/images/terra.png)]()


### Key considerations
 - You can implement Terra pre-created tools and workflows or create your own tools and workflows
 - You must configure input data and output data for both pre-created and custom workflows
 - If you are creating a custom workflow to run on Terra.bio, then you must first create docker container images for your custom scripts or tools
- Terra workflows use resources from GCP and The Broad Institute.  
    - From GCP, Terra uses Compute Engine VMs and also the Google Genomics API. 
    - From The Broad, Terra uses their cromwell orchestration library.  Cromwell is configured with WDL files.

### How to do this

See screenshots below for general flow of working with Terra.  
 - **LOGIN** -> Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - You can use $300 USD in GCP credit when you first try out Terra
   - Review the example workspaces and browse data from the start screen (shown below)
- **CREATE WORKFLOW** -> create,import (or clone an existing) workflow  --OR--   
- **REFERENCE DATA** -> reference public data and/or upload your own research data for analysis

Terra Starter Screen - View Examples or View (Your)Workspaces
 [![terra-start](/images/terra-start.png)]()
Use Best Practice GATK4 Examples or Featured Workspaces
 [![workspaces](/images/workspaces.png)]()
Browse Reference Data
 [![all-data](/images/all-data.png)]()
Select Workflows to work with your Analysis Jobs
 [![workspace-menu](/images/workspace-menu.png)]()
 

### How to verify you've done it
 For a Terra Workflow/Tool run do the following:  
     - clone an existing workflow or import a workflow (using 'Find a Tool') that you created from Dockstore or Broad Methods Repository, shown below  
     - add your data  
     - configure the workflow / tool - shown below  
     - click 'run analysis'  
     - review job history - shown below  
   [![find-tool](/images/Find-tool.png)]()
   [![configure-job](/images/configure-job.png)]()
   [![verify-job](/images/verify-job.png)]()

### Other Things to Know
 - Terra runs on GCE VMs & the GCP Genomics/Pipelines API
 - Terra is the next generation of The Broad Institute's Firecloud tool
 - Terra terms:
    - **Workspace** -> container for workflow(s)
    - **Workflow** -> container for tool(s) and configuration in WDL
    - **Tool** -> docker container image which includes script or binary tool in WDL
    - **WDL** -> [workflow definition language](https://software.broadinstitute.org/wdl), dialect required for configurating [cromwell orchestration engine](https://github.com/broadinstitute/cromwell), as in 'a WDL file'
    - **Data (model)** -> sample, reference and configuration (tool and workflow) data



### How to learn more
 - Link to [Terra resouces](https://support.terra.bio/hc/en-us)
 - Link to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432)
