# Use Terra.bio Genomic Data

### Why do this

 [![terra-features](/images/terra-features.png)]()

 - Use genomic reference data in cloud-based analysis. Terra runs on GCP (capabilities shown above).
  - Use data with bioinformatics tools (GATK, Hail...) & workflows on Jupyter notebooks or run scalable analysis on GCP without manually configuring Jupyter Hub, Cloud Storage & VMs (or container clusters)
 - Read - [The future of GATK tutorials is written in Notebooks](https://software.broadinstitute.org/gatk/blog?id=24167)


### What is this

 Use Terra reference data for analysis - the web ui in this system is shown belown

[![data-view](/images/data-view.png)]()
 
 Explore genomic reference datasets using the interactive data viewer --  shown below, to decide when they'll be useful in your analysis. 

[![data-viewer](/images/data-viewer.png)]()

### Key considerations
- Many Terra (GCP) datasets require authenticated access.  The '1000 Genomes' dataset has public access.
- Import and use any subset of reference data in your Terra analysis (notebook or worflow)


### How to do this

See screenshots below for general flow of working with reference data and your own data in Terra.  
- **LOGIN & SETUP** -> 
  - Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - Use $300 USD in GCP credit when you first try out Terra
   - Create a Terra workspace to hold your notebooks 
- **REFERENCE DATA** -> 
  - Refer to public reference data (Terra Library -> Data) 
  - Upload your own research data for analysis (Your Terra Workspace -> Data Section)
  - Refer to data in Cloud Storage (use gs://{mybucket}/{my folder}) in your notebook
- **SETUP ANALYSIS** -> 
  - Use (or import) a Terra (Jupyter) noteook 
  - Use (or import) a Terra workflow

### Example Screenshots from Terra

Starter screen
 [![terra-start](/images/terra-start.png)]()
Review Showcase & Tutorials (View Examples Section)
 [![all-data](/images/all-data.png)]()
Explore 1000 Genomes Public Dataset
 [![data](/images/data.png)]()
Click the top left menu and Create a Workspace to get started
 [![workspace](/images/workspace.png)]()
Click on your workspace, then the Data menu to work with data for your analysis
 [![data-workspace](/images/data-workspace.png)]()
 
### How to verify you've done it
 You can preview or download your files if need be from the Terra data tab.

 For some file types, you can use the integrated IGV file viewer
    
[![data-igv](/images/data-igv.png)]()  

----

### Other Things to Know
 - If you download data, you may incur GCP service charges.

### How to learn more
 - 📙Try out some example Terra notebooks using the [Terra Notebooks Playground](https://app.terra.bio/#workspaces/help-gatk/Terra%20Notebooks%20Playground) workspace - examples using Python, R and also many bioinformatics tools
 - 📙Try out some example Terra notebooks (Jupyter_Notebook_Examples folder), includes using the [CSIRO Bioinformatics VariantSpark](https://bioinformatics.csiro.au/variantspark) library and other bioinformatics libraries.
 - 📙Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)
- 📘Links to [Terra articles](https://support.terra.bio/hc/en-us)
or to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432) hosted by the Broad
 - 📺 Watch 32 minute [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g) screencast by the Broad
 - 📺 Watch 15 minute [Understand Notebooks in Terra](https://www.youtube.com/watch?v=qP-1xk02AS0) screencast by the Broad
 - 📺 Watch 25 minute [Use Notebooks in Terra](https://www.youtube.com/watch?v=-wBohV_vj-o) screencast by the Broad
 