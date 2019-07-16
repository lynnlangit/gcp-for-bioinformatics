# Use Terra.bio Notebooks

### Why do this

 [![terra-features](/images/terra-features.png)]()

 - Use bioinformatics tools (GATK, Hail...) & workflows on Jupyter notebooks running on Terra (capabilities shown above). Terra runs on GCP.
 - Run scalable analysis on GCP without manually configuring Jupyter Hub, Cloud Storage & VMs (or container clusters)
 - Read - [The future of GATK tutorials is written in Notebooks](https://software.broadinstitute.org/gatk/blog?id=24167)


### What is this

 Use Terra (Jupyter) notebooks for analysis - the architecture and flow of researcher actions in this system is shown belown

[![terra-nb-arch](/images/terra-nb-arch.png)]()
 
 Create and run your own Jupyter notebooks, or use example notebooks which implement standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) - shown below, or [Hail](https://hail.is/) in your analysis.  

  [![gatk-concepts](/images/gatk-concepts.png)]()


### Key considerations
- Use preconfigured, best-practice Terra notebooks using bioinformatics tools (GATK, Hail...) --OR--
- Import and run your own notebooks in your Terra workspace
- Configure Terra Notebook instances as needed - use the blue gear in the upper right of the Terra Notebook configuration interface to set the amount of CPU, RAM...
- Utilize GCP services in your analysis with Terra Notebook interface. Common services include Cloud Storage, BigQuery and others.

### How to do this

See screenshots below for general flow of working with Terra.  
- **LOGIN & SETUP** -> 
  - Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - Use $300 USD in GCP credit when you first try out Terra
   - Create a Terra workspace to hold your notebooks 
- **REFERENCE DATA** -> 
  - Refer to public reference data (Terra Library -> Data) 
  - Upload your own research data for analysis (Your Terra Workspace -> Data Section)
  - Refer to data in Cloud Storage (use gs://{mybucket}/{my folder}) in your notebook
- **START NOTEBOOK INSTANCE** -> 
  - Use (or import) a Jupyter noteook - view your notebook
  - Configure and start a Terra Notebook instance
  - Use the blue gear in the upper right to configure your notebook instnace size (CPU, memory, startup script...)
  - Open your notebook and execute the cells in your notebook  


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
Click on your workspace, then the Notebooks menu to run Notebooks
 [![workspace-menu](/images/workspace-menu.png)]()
 
### How to verify you've done it
 For your Terra notebook, start a notebook instance and perform your analysis in your notebook, example shown below 
 
    
   [![terra-notebook](/images/terra-notebook.png)]()  

### 📺Click to see Lynn's 7 minute exploration of this section  
[![Terra GCP Jupyter Notebook Instances for Bioinformatics](http://img.youtube.com/vi/ntQPiUuHihw/0.jpg)](http://www.youtube.com/watch?v=ntQPiUuHihw "Terra GCP Jupyter Notebook Instances for Bioinformatics")

### Other Things to Know
 - Notebooks automatically pause after 30 minutes of no activity.  They can be restarted using the blue start button in in the upper right corner of the Terra UI
 - Terra terms:
    - **Workspace** -> Container for workflow(s)
    - **Notebook** -> Jupyter notebook (*.ipynb file type)
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
 - 📙Try out some example Terra notebooks using the [Terra Notebooks Playground](https://app.terra.bio/#workspaces/help-gatk/Terra%20Notebooks%20Playground) workspace - examples using Python, R and also many bioinformatics tools
 - 📙Try out some example Terra notebooks (Jupyter_Notebook_Examples folder), includes using the [CSIRO Bioinformatics VariantSpark](https://bioinformatics.csiro.au/variantspark) library and other bioinformatics libraries.
 - 📙Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)
- Links to [Terra articles](https://support.terra.bio/hc/en-us)
or to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432) hosted by the Broad
- See [GATK Dictionary](https://software.broadinstitute.org/gatk/documentation/topic?name=dictionary) for definitions of key terms used in GATK docs
 - 📺Watch 32 minute [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g) screencast
 - 📺Watch 15 minute [Understand Notebooks in Terra](https://www.youtube.com/watch?v=qP-1xk02AS0) screencast by the Broad
 - 📺Watch 25 minute [Use Notebooks in Terra](https://www.youtube.com/watch?v=-wBohV_vj-o) screencast
 