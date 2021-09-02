# Use Terra.bio Genomic Reference Datasets

### Why do this
 - USE genomic reference datasets in cloud-based analysis  
    - GCP hosts a number of genomic reference datasets in GCS buckets. 
    - Many of these datasets can be accessed by the Terra.bio platform (which runs on GCP).
  - USE genomic reference data in your analysis **without having to upload any reference data** to the cloud. Examples of standard analysis tools (and other usages) are listed below:
    - [GATK](https://software.broadinstitute.org/gatk/) - genomic analysis toolkit
    - [Hail](https://hail.is/) - variant discovery library 
    - Your custom analysis 
      - Interactive analysis with Jupyter notebooks on the GCP/Terra.bio platform --or-- 
      - Scalable, batch workflows with WDL scripts/cromwell engine on the GCP/Terra.bio platform 
 
 ---

### Core Terra Capabilities
 [![terra-features](/images/terra-features.png)]()

### What is this

 USE Terra reference data in your analysis jobs. Terra interactive or batch analysis jobs include the ability to reference a number of datasets that are hosted in the cloud (on GCP) already. 

 ### Terra Reference Datasets
 [![ref-datasets](/images/ref-datasets.png)]()  

---

### Key considerations
- Many Terra (GCP) reference datasets require authenticated access because they consist of human health data.  To explore this feature, all users can use the **'1000 Genomes' dataset** because it has public access.
- Import and use any subset of this reference data in your Terra analysis (notebook or workflow)

### How to do this and verify 

See screenshots below for general flow of working with reference data and your own data in Terra.  
- **LOGIN & SETUP** -> 
  - Navigate to [Terra.bio](https://terra.bio/) --> 'Try Terra' and authenticate with your email
   - Use $300 USD in GCP credit when you first try out Terra
   - Create a Terra workspace to run your Jupyter notebooks or WDL/cromwell workflows. These areas are where you will define your analysis using selected refernce datasets 
- **REFERENCE DATA** -> 
  - IMPORT any subset from your authorized Terra reference data (Terra Library -> Data)  
   --AND/OR--
  - UPLOAD your own research data for analysis in one or more of these locations
      - Within your Terra Workspace -> Data tab -> Files section on the Data page
      - In a Cloud Storage bucket with appropriate permissions
         - i.e. use `gs://{mybucket}/{my folder})` in your notebook or workflow
- **SETUP ANALYSIS with your data** -> 
  - Use (or import) a Terra (Jupyter) noteook which includes a path to your selected reference dataset
  - Use (or import) a Terra (WDL) workflow which includes a path to your selected reference dataset

### Data Workflow Screens from Terra

1. View Terra.bio welcome page -> click 'Browse Data'
2. Review Showcase & Tutorials (View Datasets Section) -> click the top left menu and Create a Workspace to get started
 [![workspace](/images/workspace.png)]()
3. Review available reference datasets (based on permissions assigned to your Terra user login account)
 [![all-data](/images/all-data.png)]()
4. Explore 1000 Genomes Public Dataset, (optionally) click on one or more blue bars to create a filter for this dataset -> click 'Save in Terra' to save your selection as a cohort in your Terra workspace
 [![data](/images/data.png)]()
5. Import your selected data into your Terra workspace
 [![import-data](/images/import-data.png)]()
6. Select the files in your Terra workspace Data section
 [![view-data](/images/view-data.png)]()
7. Click the blue `+` buttons to add files to your workspace
 [![add-files](/images/add-files.png)]()
8. Use the data preview to examine your reference data in your workspace
 [![data-workspace](/images/data-workspace.png)]()
9. View your selected data using the IGV viewer (or perform analysis using a WDL/cromwell Terra workflow)
 [![open-with](/images/open-with.png)]()
10. Example of using the integrated IGV file viewer to view a files
[![data-igv](/images/data-igv.png)]() 

----

### Other Things to Know
 - Terra Workspace sections:
    - **Notebooks** -> Jupyter notebooks -`*.ipynb` files 
    - **Workspace** -> Container for WDL workflow(s), uses WDL syntax for the workflow script
    - **Dashboard** -> Wiki describing WDL workflow(s) in a workspace, uses Markdown syntax
    - **Data** -> Container for the types of data you will analyze. This includes your sample data, as well reference datasets.  When you create a workspace Terra creates an associated GCS bucket (name starts with `gs://fc-nnnnnn-nnnnnn-nnnnn...` . Also you can reference data in any GCS bucket to which you assign GCS IAM permissions (i.e. `gs://<myBucket>/...`)
    NOTE: Before you download data locally, note estimated costs in the popup window. 
      - **Table Inputs** -> this is the metadata for the input/output files that you will be analyzing in your pipeline
        - You can reference this data using the path to the GCS bucket, (i.e. `gs://<bucketName>/<fileName>) --or--
        - You can reference this data using a pointer to the GCS bucket path, i.e. (`this.myInputFile`)
        - Defined by a structured .tsv metadata file creates aliases & pointers to your input files locations on GCS. These aliases are referenced in Terra worflows (as variables). TSV files for Terra.bio require the following structure - example [link](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/genomic-data-samples/TSV/terra_sample.tsv):
          - First column includes the entity: with an id, i.e. 'entity:name_id', etc...
          - Each column is tab delimeted
          - Generally each column header refers to its rows which have links to the files for those column names in GCS buckets

        - More about the Terra Data Inputs Model - [link](https://gatkforums.broadinstitute.org/firecloud/discussion/9769/data-model)
          - **Participant** -> a person enrolled in a study
          - **Sample** -> a biological sample collected from a participant
          - **Pair** -> represents a pair of biological samples collected from a participant
          - **Set** -> group of Participants, Samples or Pairs

      - **Reference Data** -> genomic reference data, i.e. `b37human` or `hg38`
      - **Workspace Data** -> workspace parameters, i.e. path to dockerfile, variable values, etc..., i.e. (`worskpace.myDocker`)
      - **Files** -> links to workspace files (in the associated GCS bucket at `gs://fc-nnnn....`)
      - **Workflow Data** -> WDL scripts & `input.json` files (variable configuration files)
    
  
  [![data-model](/images/data-model.png)]()  
  Image of Terra Data Model from this [link](https://software.broadinstitute.org/firecloud/documentation/quickstart?page=data)

### How to learn more

#### Learn about Terra Data Tab
- 📺 Watch 5 minute [Intro to Data Tables](https://www.youtube.com/watch?v=IeLywroCNNA) screencast by the Broad 
- 📺 Watch 5 minute [Making and Uploading a Data Table in Terra](https://www.youtube.com/watch?v=2MxSlKhIrFY) screencast by the Broad
- 📘 Link to step-by-step article on how to [Set up Terra Data Tables](https://support.terra.bio/hc/en-us/articles/360051043031)
- 📺 Watch 3 minute [Making Data Tables Using a Template](https://www.youtube.com/watch?v=7YyWptsdC-w) screencast by the Broad 
- 📺 Watch 32 minute [Intro to Terra](https://www.youtube.com/watch?v=9kffTkK-B7g) screencast by the Broad

 #### Learn about Terra Data Analysis 
- 📺 Watch 15 minute [Understand Notebooks in Terra](https://www.youtube.com/watch?v=qP-1xk02AS0) screencast by the Broad
 - 📙 Try out some example Terra Jupyter notebooks using the [Terra Notebooks Quickstart](https://app.terra.bio/#workspaces/fc-product-demo/Terra-Notebooks-Quickstart) workspace - examples using R, BigQuery and also many bioinformatics tools
 - 📙 Try out some example Terra workflows includes using the [Terra Workflows Quickstart](https://app.terra.bio/#workspaces/fc-product-demo/Terra-Workflows-Quickstart) and other bioinformatics libraries.
 - 📙 Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)
- 📘 Link to [The future of GATK tutorials is written in Notebooks](https://software.broadinstitute.org/gatk/blog?id=24167)
- 📙 Try out an [example using Terra workflows on the controlled access TARGET dataset](https://app.terra.bio/#workspaces/help-gatk/Introduction-to-Target-Dataset)
- 📘 Links to [Terra articles](https://support.terra.bio/hc/en-us)
or to [Terra community forum](https://support.terra.bio/hc/en-us/community/topics/360000500432) hosted by the Broad
- 📺 Watch 25 minute [Use Notebooks in Terra](https://www.youtube.com/watch?v=-wBohV_vj-o) screencast by the Broad
 
