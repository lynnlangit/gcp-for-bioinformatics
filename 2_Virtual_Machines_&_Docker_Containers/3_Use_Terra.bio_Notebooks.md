# Use Terra.bio Notebooks

### Why do this

 - You would like to use bioinformatics tools (GATK, Hail...) & workflows on Jupyter notebooks
 - You would like to run scalable analysis on GCP without manually configuring Jupyter Hub, Cloud Storage & VMs (or container clusters)
 - You'd like to use The Broad Institute's Terra.bio genomics analysis application (browser-based) 
 - Terra's key capabilities are shown below 

 [![terra-features](/images/terra-features.png)]()


### What is this
 
 - Use standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) or [Hail](https://hail.is/) in your analysis.  GATK concepts are shown below

 [![gatk-concepts](/images/gatk-concepts.png)]()
 - Use best-practice workflows for bioinformatics that run on pre-configured GCP services (VMs and storage buckets)
 - Configure analysis jobs via The Broad Institute's Terra workflows -or- use Terra (Jupyter) notebooks for analysis
 - This article covers the potential ways of running analysis on GCP for the items highlighted in RED SQUARES shown below

[![terra](/images/terra.png)]()


### Key considerations
- You can use Terra example Notebooks with common bioinformatics tools or create your own 
- You can also import your existing notebooks into a Terra workspace
- Terra Notebooks use resources from GCP - ComputeEngine and CloudStorage.  They can also use other GCP resources, such as BigQuery. 

### How to do this

See screenshots below for general flow of working with Terra.  
 - **LOGIN** -> Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - You can use $300 USD in GCP credit when you first try out Terra
   - Review the example workspaces and browse data from the start screen (shown below)
- **START NOTEBOOK INSTANCE** -> and use (or import) a Jupyter noteook.  
- **REFERENCE DATA** -> reference public data and/or upload your own research data for analysis

### Example Screenshots from Terra

Starter screen
 [![terra-start](/images/terra-start.png)]()
Review Showcase & Tutorials (View Examples Section)
 [![workspaces](/images/workspaces.png)]()
Review Public Reference Data (Browse Data Section)
 [![all-data](/images/all-data.png)]()
Explore 1000 Genomes Public Dataset
 [![data](/images/data.png)]()
Click the top left menu and Create a Workspace to get started
 [![workspace](/images/workspace.png)]()
Click on your workspace and then Notebooks to work with Jupyter Notebooks
 [![workspace-menu](/images/workspace-menu.png)]()
 
### How to verify you've done it
 For a Terra notebook, start a notebook instance and perform your analysis in your notebook, example shown below 
 
    
   [![terra-notebook](/images/terra-notebook.png)]()  

### Other Things to Know
 - Terra terms:
    - **Workspace** -> container for workflow(s)
    - **Notebook** -> Jupyter notebook
    - **Data (model)** -> sample, reference and configuration (tool and workflow) data

### How to learn more
 - Link to [Terra resouces](https://support.terra.bio/hc/en-us)
 - Link to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432)
 - Upload the example Terra notebooks (Jupyter_Notebook_Examples folder), includes using the [CSIRO Bioinformatics VariantSpark](https://bioinformatics.csiro.au/variantspark) library and other bioinformatics libraries.