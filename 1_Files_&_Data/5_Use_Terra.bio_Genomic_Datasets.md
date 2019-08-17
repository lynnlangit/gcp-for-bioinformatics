# Use Terra.bio Genomic Data

### Why do this
 - USE genomic reference data in cloud-based analysis. Terra runs on GCP (capabilities shown above).
  - USE data with bioinformatics tools ([GATK](https://software.broadinstitute.org/gatk/), [Hail](https://hail.is/)...) & workflows on Jupyter notebooks or run scalable analysis on GCP without manually configuring Jupyter Hub, Cloud Storage & VMs (or container clusters)
 - READ - [The future of GATK tutorials is written in Notebooks](https://software.broadinstitute.org/gatk/blog?id=24167)

 Core Terra Capabilities
 [![terra-features](/images/terra-features.png)]()


### What is this

 USE Terra reference data in your analysis jobs. Terra includes the ability to reference a number of datasets that are hosted in the cloud already.   

Terra Datasets Web  UI
[![data-view](/images/data-view.png)]()
 
Explore Terra Datasets using the interactive data viewer
[![data-viewer](/images/data-viewer.png)]()

### Key considerations
- Many Terra (GCP) datasets require authenticated access.  The '1000 Genomes' dataset has public access.
- Import and use any subset of reference data in your Terra analysis (notebook or worflow)


### How to do this

See screenshots below for general flow of working with reference data and your own data in Terra.  
- **LOGIN & SETUP** -> 
  - Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - Use $300 USD in GCP credit when you first try out Terra
   - Create a Terra workspace to hold your notebooks or workflows which is where you will define your analysis using selected data 
- **REFERENCE DATA** -> 
  - IMPORT any subset from your authorized Terra reference data (Terra Library -> Data)  
   --AND/OR--
  - UPLOAD your own research data for analysis in one or more of these locations
      - Within your Terra Workspace -> Data Section
      - In a Cloud Storage bucket with appropriate permissions
         - i.e. use `gs://{mybucket}/{my folder})` in your notebook or workflow
- **SETUP ANALYSIS** -> 
  - Use (or import) a Terra (Jupyter) noteook 
  - Use (or import) a Terra workflow

### Example Screenshots from Terra

Starter screen
 [![terra-start](/images/terra-start.png)]()
Review Showcase & Tutorials (View Datasets Section)
Click the top left menu and Create a Workspace to get started
 [![workspace](/images/workspace.png)]()
 Review available reference data
 [![all-data](/images/all-data.png)]()
Explore 1000 Genomes Public Dataset. Click 'Save in Terra' to save your selection as a cohort in your Terra workspace
 [![data](/images/data.png)]()
 Import your selected data into your Terra workspace
 [![import-data](/images/import-data.png)]()
 Work with your selected data in your Terra workspace in the Data section
 [![view-data](/images/view-data.png)]()

Use the integrated Data Viewers to examine your reference data and analysis data
 [![data-workspace](/images/data-workspace.png)]()
 
### How to verify you've done it
 You can preview or download your files if need be from the Terra data tab.

 For some file types, you can use the integrated IGV file viewer
    
[![data-igv](/images/data-igv.png)]()  

----

### Other Things to Know
 - If you download data to your local laptop, you may incur GCP service charges.
 - Terra terms:
    - **Workspace** -> Container for workflow(s)
    - **Notebook** -> Jupyter notebook (*.ipynb file type)
    - **Tables** -> your imported reference datasets
    - **Reference Data** -> public reference data
    - **Workspace (Other) Data** -> your uploaded research data - the 'Data' tab in the Terra UI
      More about the Terra Data Model - [link](https://gatkforums.broadinstitute.org/firecloud/discussion/9769/data-model)
      - Participant -> a person enrolled in a study
      - Sample -> a biological sample collected from a participant
      - Pair -> represents a pair of biological samples collected from a participant
      - Set -> group of Participants, Samples or Pairs

  [![data-model](/images/data-model.png)]()  
  Image of Terra Data Model from this [link](https://software.broadinstitute.org/firecloud/documentation/quickstart?page=data)

### How to learn more
 - 📙 Try out some example Terra notebooks using the [Terra Notebooks Playground](https://app.terra.bio/#workspaces/help-gatk/Terra%20Notebooks%20Playground) workspace - examples using Python, R and also many bioinformatics tools
 - 📙 Try out some example Terra notebooks (Jupyter_Notebook_Examples folder), includes using the [CSIRO Bioinformatics VariantSpark](https://bioinformatics.csiro.au/variantspark) library and other bioinformatics libraries.
 - 📙 Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)
- 📘 Links to [Terra articles](https://support.terra.bio/hc/en-us)
or to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432) hosted by the Broad
 - 📺  Watch 32 minute [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g) screencast by the Broad
 - 📺 Watch 15 minute [Understand Notebooks in Terra](https://www.youtube.com/watch?v=qP-1xk02AS0) screencast by the Broad
 - 📺 Watch 25 minute [Use Notebooks in Terra](https://www.youtube.com/watch?v=-wBohV_vj-o) screencast by the Broad
 