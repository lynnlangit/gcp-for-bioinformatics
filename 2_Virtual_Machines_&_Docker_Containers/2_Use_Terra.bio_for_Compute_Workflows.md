# Use Terra.bio for Compute Workflows


### Why do this

 - You would like to use best-practice bioinformatics tools & workflows rather than author jobs yourself 
 - You would like to use GCP without manually configuring storage and VMs
 - Terra capabilities are shown below 

 [![terra-features](/images/terra-features.png)]()


### What is this
 
 - Use standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) or [Hail](https://hail.is/) in your analysis
 - Use best-practice workflows for bioinformatics that run on pre-configured GCP services (VMs and storage buckets)
 - Configure analysis jobs via Terra workflows -or- use Terra (Jupyter) notebooks for analysis
 - This article covers the potential ways of running analysis on GCP for the items highlighted in RED SQUARES shown below

[![terra](/images/terra.png)]()


### Key considerations
 - You can use pre-created tools and workflows or create your own tools and workflows
 - You must configure input data and output data for both pre-created and custom workflows
 - If you are creating a custom workflow to run on Terra.bio, then you must first create docker container images for your custom scripts or tools
- Terra workflows use resources from GCP and The Broad Institute.  
    - From GCP, Terra uses Compute Engine VMs and also the Google Genomics API. 
    - From The Broad, Terra uses cromwell orchestration.  Cromwell is configured with WDL files.

### How to do this
 - Navigate to Terra.bio and authenticate with your email
 - Review example workspaces and browse data from the start screen (shown below)
 - Determine whether you want to use Notebooks or Tools (Workflows)
 - Create your own workspace and either clone an existing workflow or import a workflow you've created into your workspace. 
    - Alternatively you can start a notebook instance and use (or import) a Jupyter noteook.
    - Reference public data and/or upload your own research data for analysis

 [![terra-start](/images/terra-start.png)]()
 [![arrow](/images/arrow.png)]()
 [![workspaces](/images/workspaces.png)]()
 [![arrow](/images/arrow.png)]()
 [![all-data](/images/all-data.png)]()
 [![arrow](/images/arrow.png)]()
 [![data](/images/data.png)]()
 [![arrow](/images/arrow.png)]()
 [![workspace](/images/workspace.png)]()
 [![arrow](/images/arrow.png)]()
 [![workspace-menu](/images/workspace-menu.png)]()
 

### How to verify you've done it
 - For a Terra notebook, start a notebook instance and perform your analysis in your notebook, shown below --OR--
 - For a Terra Workflow/Tool run do the following:
     - clone an existing workflow or import a workflow (using 'Find a Tool') that you created from Dockstore or Broad Methods Repository, shown below
     - add your data
     - configure the workflow / tool - shown below
     - click 'run analysis'
     - review job history - shown below
    
   [![terra-notebook](/images/terra-notebook.png)]()
   --or--
   [![find-tool](/images/Find-tool.png)]()
   [![arrow](/images/arrow.png)]()
   [![configure-job](/images/configure-job.png)]()
   [![arrow](/images/arrow.png)]()
   [![verify-job](/images/verify-job.png)]()

### Other Things to Know
 - Terra runs on GCE VMs & the GCP Genomics/Pipelines API
 - Terra is the next generation of The Broad Institute's Firecloud tool
 - Terra terms:
    - Workspace -> container for workflow(s)
    - Workflow -> container for tool(s) and configuration in WDL
    - Tool -> docker container image which includes script or binary tool in WDL
    - WDL - workflow definition language, dialect required for configurating cromwell orchestration engine, as in 'a WDL file'
    - Data (model) -> sample, reference and configuration (tool and workflow) data

### How to learn more
 - Link to [Terra resouces](https://support.terra.bio/hc/en-us)
 - Link to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432)