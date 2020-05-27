# Use Terra.bio Notebooks

### Why do this

 [![terra-features](/images/terra-features.png)]()

 - USE bioinformatics tools (GATK, Hail...) & workflows on Jupyter notebooks running on Terra (capabilities shown above). Terra runs on GCP.
 - RUN scalable analysis on GCP without manually configuring Jupyter Hub, Cloud Storage & VMs (or container clusters)
 - READ - [The future of GATK tutorials is written in Notebooks](https://software.broadinstitute.org/gatk/blog?id=24167)


### What is this

 Use Terra (Jupyter) notebooks for analysis - the architecture and flow of researcher actions in this system is shown belown

[![terra-nb-arch](/images/terra-nb-arch.png)]()
 
 Create and run your own Jupyter notebooks, or use example notebooks which implement standard bioinformatics tools, such as [GATK](https://software.broadinstitute.org/gatk/) - shown below, or [Hail](https://hail.is/) in your analysis.  

  [![gatk-concepts](/images/gatk-concepts.png)]()


### Key considerations
- USE preconfigured, best-practice Terra notebooks using bioinformatics tools (GATK, Hail...) --OR--
- IMPORT and run your own notebooks in your Terra workspace
- CONFIGURE Terra Notebook instances as needed - use the blue gear in the upper right of the Terra Notebook configuration interface to set the amount of CPU, RAM...
- USE GCP services in your analysis with Terra Notebook interface. Common services include Cloud Storage, BigQuery and others.

### How to do this

See screenshots below for general flow of working with Terra.  
- **LOGIN & SETUP** -> 
  - NAVIGATE to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - USE $300 USD in GCP credit when you first try out Terra
   - CREATE a Terra workspace to hold your notebooks 
- **REFERENCE DATA** -> 
  - REFERENCE public genomic datasets (Terra Library -> Data) 
  - UPLOAD your own research data for analysis (Your Terra Workspace -> Data Section)
  - REFER to data in Cloud Storage (use gs://{mybucket}/{my folder}) in your notebook
- **START NOTEBOOK INSTANCE** -> 
  - USE (or import) a Jupyter noteook - VIEW your notebook
  - CONFIGURE and start a Terra Notebook instance
  - USE the blue gear in the upper right to configure your notebook instnace size (CPU, memory, startup script...)
  - OPEN your notebook and execute the cells in your notebook  


### Example Screenshots from Terra

Explore `Showcase & Tutorials` section -> includes example bioinformatics notebooks
 [![workspaces](/images/workspaces.png)]()
Explore `Datasets` section -> contains reference datasets
 [![all-data](/images/all-data.png)]()
Explore 1000 Genomes Public Dataset using the built-in data browser tool
 [![data](/images/data.png)]()
Click the top left Terra menu to create or select your Workspace to start working with your own Terra Notebook
 [![workspace](/images/workspace.png)]()
Click on your workspace, then the `Notebooks` menu to run Notebooks
 [![workspace-menu](/images/workspace-menu.png)]()
 
### How to verify you've done it
 For your Terra notebook, start a notebook instance and perform your analysis in your notebook, example shown below 
 
    
   [![terra-notebook](/images/terra-notebook.png)]()  

----

### 📺 Click to see Lynn's 7 minute exploration of this section  
[![Terra GCP Jupyter Notebook Instances for Bioinformatics](http://img.youtube.com/vi/ntQPiUuHihw/0.jpg)](http://www.youtube.com/watch?v=ntQPiUuHihw "Terra GCP Jupyter Notebook Instances for Bioinformatics")

### Other Things to Know
 - Notebooks automatically pause after 30 minutes of no activity.  They can be restarted using the blue start button in in the upper right corner of the Terra UI  
 - Key Terra concepts:
    - **Workspace** -> container for WDL workflow(s)
    - **Dashboard** -> Wiki describing WDL workflow(s)
    - **Notebooks** -> container for Jupyter notebooks -`*.ipynb` files
    - **Workflows** -> container for tool(s)/scripts (GATK, Hail...) and configuration, written in WDL for cromwell, JSON for parameters  
      - **Tool** -> docker container image of your research script or binary tool and configuration in WDL
      - **WDL** -> [workflow definition language](https://software.broadinstitute.org/wdl), dialect required for configuring [cromwell orchestration engine](https://github.com/broadinstitute/cromwell), as in 'a WDL file'
    - **Data** -> there are serveral types of data, when you create a workspace Terra creates an associated GCS bucket (name starts with `gs://fc-nnnnnn-nnnnnn-nnnnn...` . Also you can reference data in any GCS bucket to which you assign GCS IAM permissions (i.e. `gs://<myBucket>/...`) 
      - **Table Inputs** -> this is the data (files) that you will be analyzing in your pipeline
        - You can reference this data using the path to the GCS bucket, (i.e. `gs://<bucketName>/<fileName>) --or--
        - You can reference this data using a pointer to the GCS bucket path, i.e. (`this.myInputFile`)
        - More about the Terra Data Inputs Model - [link](https://gatkforums.broadinstitute.org/firecloud/discussion/9769/data-model)
          - Participant -> a person enrolled in a study
          - Sample -> a biological sample collected from a participant
          - Pair -> represents a pair of biological samples collected from a participant
          - Set -> group of Participants, Samples or Pairs
      - **Reference Data** -> genomic reference data, i.e. `b37human` or `hg38`
      - **Workspace Data** -> workspace parameters, i.e. path to dockerfile, variable values, etc..., i.e. (`worskpace.myDocker`)
      - **Workflow Data** -> WDL scripts & `input.json` files 

  [![data-model](/images/data-model.png)]()  
  Image of Terra Data Model from this [link](https://software.broadinstitute.org/firecloud/documentation/quickstart?page=data)


### How to learn more
 - 📙 Try out some example Terra notebooks using the [Terra Notebooks Playground](https://app.terra.bio/#workspaces/help-gatk/Terra%20Notebooks%20Playground) workspace - examples using Python, R and also many bioinformatics tools
 - 📙 Try out the scenario-based [Terra Jupyter Notebooks QuickStart Workspace](https://app.terra.bio/#workspaces/fc-product-demo/Terra-Notebooks-Quickstart) this uses Google BigQuery as well
 - 📙 Try out some example Terra notebooks (Jupyter_Notebook_Examples folder), includes using the [CSIRO Bioinformatics VariantSpark](https://bioinformatics.csiro.au/variantspark) library and other bioinformatics libraries.
 - 📙 Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)
- 📘 Links to [Terra articles](https://support.terra.bio/hc/en-us)
or to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432) hosted by the Broad
- 📘 See [GATK Dictionary](https://software.broadinstitute.org/gatk/documentation/topic?name=dictionary) for definitions of key terms used in GATK docs
- 📺 Watch short [using Terra](https://www.youtube.com/channel/UCkXAqpR5Hk1ZmNd2-1K2l5Q/videos) screencasts by the Broad
- 📺 Watch 32 minute [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g) screencast by the Broad
- 📺 Watch 15 minute [Understand Notebooks in Terra](https://www.youtube.com/watch?v=qP-1xk02AS0) screencast by the Broad
- 📺 Watch 25 minute [Use Notebooks in Terra](https://www.youtube.com/watch?v=-wBohV_vj-o) screencast by the Broad
 