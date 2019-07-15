# Use Terra.bio Notebooks

### Why do this

 - Use bioinformatics tools (GATK, Hail...) & workflows on Jupyter notebooks
 - Run scalable analysis on GCP without manually configuring Jupyter Hub, Cloud Storage & VMs (or container clusters)
 - Read - [The future of GATK tutorials is written in Notebooks](https://software.broadinstitute.org/gatk/blog?id=24167)
 - Terra's key capabilities are shown below 

 [![terra-features](/images/terra-features.png)]()


### What is this
 
 - Use Jupyter notebooks and standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) or [Hail](https://hail.is/) in your analysis.  GATK concepts are shown below
 [![gatk-concepts](/images/gatk-concepts.png)]()
 - Use Terra (Jupyter) notebooks for analysis
 - This article covers the potential ways of running analysis on GCP for the items highlighted in RED SQUARES shown below

[![terra-notebooks](/images/terra-notebooks.png)]()


### Key considerations
- Terra includes example notebooks using standard bioinformatics tools such as Hail
- Import and run your existing notebooks into a Terra workspace
- Configure Terra Notebook instances as needed - use the blue gear in the upper right of the Terra Notebook configuration interface
- Configure & use GCP services via Terra Notebooks (Compute Engine, Cloud Storage, BigQuery...)

### How to do this

See screenshots below for general flow of working with Terra.  
- **LOGIN** -> 
  - Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - You can use $300 USD in GCP credit when you first try out Terra
- **REFERENCE DATA** -> 
  - Use public reference data (Terra Library -> Data)
  - Upload your own research data for analysis (Your Terra Workspace -> Data Section)
  - Refer to data in Cloud Storage (use gs://{mybucket}/{my folder}) in your notebook
- **START NOTEBOOK INSTANCE** -> 
  - Use (or import) a Jupyter noteook - view your notebook
  - Configure (GEAR) and start a Terra Notebook instance
  - Execute the cells in your notebook  


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
Click on your workspace and then the Notebooks menu to work with Jupyter Notebooks
 [![workspace-menu](/images/workspace-menu.png)]()
 
### How to verify you've done it
 For your Terra notebook, start a notebook instance and perform your analysis in your notebook, example shown below 
 
    
   [![terra-notebook](/images/terra-notebook.png)]()  

### 📺Click to see Lynn's 7 minute exploration of this section  
[![Terra GCP Jupyter Notebook Instances for Bioinformatics](http://img.youtube.com/vi/ntQPiUuHihw/0.jpg)](http://www.youtube.com/watch?v=ntQPiUuHihw "Terra GCP Jupyter Notebook Instances for Bioinformatics")

### Other Things to Know
 - Terra terms:
    - **Workspace** -> Container for workflow(s)
    - **Notebook** -> Jupyter notebook
    - **Reference Data** -> public reference data
    - **Workspace Data** -> your uploaded research data - the 'Data' tab in the Terra UI
      More about the Terra Data Model - [link](https://gatkforums.broadinstitute.org/firecloud/discussion/9769/data-model)
      - Participant -> a person enrolled in a study
      - Sample -> a biological sample collected from a participant
      - Pair -> represents a pair of biological samples collected from a participant
      - Set -> group of Participants, Samples or Pairs

  [![data-model](/images/data-model.png)]()  
  Image of Terra Data Model from this [link](https://software.broadinstitute.org/firecloud/documentation/quickstart?page=data)


### How to learn more
 - Link to [Terra resouces](https://support.terra.bio/hc/en-us)
 - Link to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432)
 - 📙Try out some example Terra notebooks (Jupyter_Notebook_Examples folder), includes using the [CSIRO Bioinformatics VariantSpark](https://bioinformatics.csiro.au/variantspark) library and other bioinformatics libraries.
 - 📙Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)