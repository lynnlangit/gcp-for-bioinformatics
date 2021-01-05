# Use BigQuery to Query Files

### Why do this
 - PERFORM analysis on files using SQL statements
 - PAY by the query (amount of data scanned)
 - AVOID setting up any infrastructure 
    - VMs and controllers --or-- 
    - Docker container image instance clusters

### What is this
 - QUERY on file data (including genomic file formats, such as VCF files) at scale using [ansi-SQL](https://en.wikipedia.org/wiki/SQL) query commands
 - QUERY on files stored in Big Query storage of other Google Services, such as [CloudStorage, Google Drive or Big Table](https://cloud.google.com/bigquery/external-data-sources) or [CloudSQL (MySQL or PostgreSQL)](https://cloud.google.com/bigquery/docs/cloud-sql-federated-queries). Example of public data in BigQuery shown below

 ![Big Query Public Genomics Dataset Example](/images/bq-public-genomics-data.png)

### Key considerations
 - Understand how BQ billing works 
    - you are charged by the **amount of data scanned** by your query
 - Billing starts at $5/TB of data scanned
 - Each query will estimate the amount of data scanned 
    - shown below on the bottom right of the WebUI
 - GCP hosts many public genomic reference datasets
   - including `1000 Genomes` and more
   - including these public datasets is fast
      - the data is already in the Google Cloud
      - the data is properly secured, via access control 

### How to do this
 - PRACTICE SQL queries using a small, public GCP bioinformatics dataset - [link](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/6a_SQLQuestions.md)
 - LEARN SQL query syntax - [link](https://www.w3schools.com/sql/sql_intro.asp)
 - USE BigQuery from the GCP UI console
    - **SELECT** your dataset to query, use included genomic reference datasets and/or upload your own file data
    - **WRITE** your SQL query referencing a BQ (or external) dataset 
    - **REVIEW** potential query costs, link to example [analyze genomic variants with BQ](https://cloud.google.com/genomics/docs/tutorials/analyze-variants-advanced)
    - **EXECUTE** the query by clicking the 'run' button, example results shown below
    - **VIEW** the results 
      - save the results as a new file in a storage bucket
      - create a report with Google Data Studio

 ### 📺 Click to see Lynn's 9 minute exploration of this section  
[![GCP BigQuery for Bioinformatics](http://img.youtube.com/vi/bWI8JPR9h0E/0.jpg)](http://www.youtube.com/watch?v=bWI8JPR9h0E "GCP BigQuery for Bioinformatics")

-----
### How to verify you've done it
 - **EXECUTE** your query by clicking the blue 'Run' button 
 - **VERIFY** that the query results match your expected output. Examples shown in screenshots below

 TIPS:
 - **WRITE** a query on a small subset of your data to verify that you've written your query correctly before you run a query on your full dataset
 - **VERIFY** the query cost BEFORE you run it 
 - **VALIDATE** the SQL syntax in the BQ web console
  - **REVIEW** the query 'Execution Details' to verify the actual query cost and execution ran as expected
  - **ESTIMATE** query cost before running the query using the `--dry_run` parameter 
 - **AVOID** using `SELECT * ...` in queries to reduce the amount of data scanned, speed up the query execution time and potentially reduce the cost of running the query

 
 RUN QUERY using GCP BigQuery Service (shown below)
 [![BigQuery query](/images/query.png)]()
 
 ---
 
 REVIEW QUERY RESULTS (shown below)  
 <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/results.png" width=600>  
 
 ---
 
 REVIEW EXECUTION PLAN (OPTIONAL and shown below)    
  <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/plan.png" width=600>
  
---

### Other Things to Know
 
 - UNDERSTAND that BQ is a type of 'serverless' service, because you do NOT setup VMs or docker container clusters to use this service.  You simply upload your data, write your query and execute the query.  You are charged for query run time and BQ storage.  You are NOT charged for VMs, etc...

 - USE BQ best practices to manage service costs - [link](https://cloud.google.com/blog/products/data-analytics/cost-optimization-best-practices-for-bigquery) & one more [link](https://cloud.google.com/bigquery/docs/best-practices-costs) on the same topic
 - SEE example BQ SQL queries for genomics - [link](https://github.com/verilylifesciences/variant-qc/tree/master/sql)
 - USE the open source `Variant Transforms` tool to transform and load hundreds of thousands of files, millions of samples, and billions of records in a scalable manner. The tool also has a preprocessor which you can use to validate VCF files and identify inconsistencies. Variant Transforms is based on Apache Beam and uses GCP Dataflow - [link](https://cloud.google.com/life-sciences/docs/how-tos/variant-transforms)

 - USE BQ includes many genomic or annotation data sets, a list is shown below
 <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/bq-public-data.png" width=600>  

 -------


### How to learn more

#### About BigQuery Query Features & Architecture
 - 📘 Link to [explanation of BigQuery query features](https://medium.com/google-cloud/bigquery-explained-querying-your-data-9e017f2714a3)
 - 📘 Link to [explanation of BigQuery JOINS](https://medium.com/google-cloud/bigquery-explained-working-with-joins-nested-repeated-data-1941646ccb5b)
 - 📘 Link to [explanation of BigQuery architecture](https://medium.com/google-cloud/bigquery-explained-overview-357055ecfda3)


#### About SQL Language for BigQuery
 - 📘 Link to lessons, [practice SQL queries using a small, public GCP bioinformatics dataset](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/6a_SQLQuestions.md)
 - 📘 Link to [learn SQL - 12 questions](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises)
 - 📘 Link to [standard SQL syntax](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) used in Google BigQuery  
 - 📘 Link to [example genomics SQL queries](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#4) shown using Google BigQuery 
 - 📘 Link to [best practices](https://cloud.google.com/bigquery/docs/best-practices-performance-compute) optimization patterns for using Google BigQuery, including how to optimize `JOIN` and other types of queries  
   
#### About controlling costs for BigQuery   
 - 📘 Link to [Understand BQ pricing](https://cloud.google.com/bigquery/pricing)
 - 📘 Link to [Save money when using BQ](https://www.linkedin.com/pulse/5-ways-save-money-google-bigquery-rob-larter/)
 - 📘 Link to [Use BQ slots](https://cloud.google.com/blog/products/data-analytics/introducing-bigquery-flex-slots)

#### About using BigQuery for Genomic Analysis
 - 📘 Link to [BQ Variants data schema](https://cloud.google.com/genomics/docs/how-tos/bigquery-variants-schema)
 - 📘 Link to [Load Variants into BQ](https://cloud.google.com/genomics/docs/how-tos/load-variants#transform-pipeline)
 - 📘 Link to [Analyze variants with BQ](https://cloud.google.com/genomics/docs/tutorials/analyze-variants-advanced)
 - :octocat: Link to [Example Genomics BQ queries](https://github.com/googlegenomics/bigquery-examples/tree/master/1000genomes)
 - 📘 Link to 60+ min Codelab [Analyze variants in BQ](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#0)
 - 📘 Link to [Example ISB-CGC tutorial](https://isb-cancer-genomics-cloud.readthedocs.io/en/latest/sections/Tutorials/KidneyCancerDemo/KidneyCancerDemo.html)
 - 📘 Link to [Example BigQuery Syntax ISB-CGC tutorial](https://isb-cancer-genomics-cloud.readthedocs.io/en/latest/sections/progapi/bigqueryGUI/GettingStartedWithGoogleBigQuery.html)
 - 📘 Link to [Example NCBI-Sequence Read Archive (SRA) in BigQuery](https://www.ncbi.nlm.nih.gov/sra/docs/sra-bigquery/)
 - 📺 Watch [working with BigQuery datasets in Terra (GCP service) ](https://www.youtube.com/watch?v=jOmCCo3EJr0) - 40 minute video from the Broad
 
 #### BigQuery Integrations
 - :octocat: Utility code for [Spark-to-BigQuery-connector](https://github.com/GoogleCloudDataproc/spark-bigquery-connector)
 - 📙 Try out BigQuery and BQ ML using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/3_Machine_Learning/Jupyter_Notebook_Examples)
 - 📺 Link to 6 minute screencast - [BigQuery Machine Learning](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-via-bigquery-ml)

 <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/bq-ml-demo.png" width=600>
  
---
