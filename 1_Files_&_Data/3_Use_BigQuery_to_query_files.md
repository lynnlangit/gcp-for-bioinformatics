# Use BigQuery to Query Files

### Why do this
 - PERFORM analysis on files using SQL statements
 - PAY by the query & avoid setting up any infrastructure (VMs or docker container image instance clusters)

### What is this
 - QUERY on file data (including genomic file formats, such as VCF files) at scale using [ansi-SQL](https://en.wikipedia.org/wiki/SQL) query commands
 - QUERY on files stored in Big Query storage of other Google Services, such as [CloudStorage, Google Drive or Big Table](https://cloud.google.com/bigquery/external-data-sources) or [CloudSQL (MySQL or PostgreSQL)](https://cloud.google.com/bigquery/docs/cloud-sql-federated-queries)

### Key considerations
 - Understand how BQ billing works - you are charged by the amount of data scanned by your query
 - Billing starts at $5/TB scanned
 - Each query will estimate the amount of data scanned (shown below on the bottom right)
 - Google provides many public reference datasets (including 1000 Genomes) which you can query (shown below)

### How to do this
 - PRACTICE SQL queries using a small, public GCP bioinformatics dataset - [link](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-queries/SQLQuestions.md)
 - LEARN SQL syntax - [link](https://www.w3schools.com/sql/sql_intro.asp)
 - USE BigQuery from the GCP UI console
    - SELECT your dataset to query, use included genomic reference datasets and/or upload your own file data
    - WRITE your SQL query referencing a BQ (or external) dataset 
    - REVIEW potential query costs, link to example [analyze genomic variants with BQ](https://cloud.google.com/genomics/docs/tutorials/analyze-variants-advanced)
    - EXECUTE the query by clicking the 'run' button, example results shown below
    - VIEW the results 
      - save the results as a new file in a storage bucket
      - create a report with Google Data Studio

 ### 📺 Click to see Lynn's 9 minute exploration of this section  
[![GCP BigQuery for Bioinformatics](http://img.youtube.com/vi/bWI8JPR9h0E/0.jpg)](http://www.youtube.com/watch?v=bWI8JPR9h0E "GCP BigQuery for Bioinformatics")

-----
### How to verify you've done it
 - EXECUTE your query by clicking the blue 'Run' button 
 - VERIFY that the query results match your expected output  
 Examples shown in screenshots below

 TIPS:
 - WRITE a query on a small subset of your data to verify that you've written your query correctly before you run a query on your full dataset
 - VERIFY the query cost BEFORE you run it 
 - VALIDATE the SQL syntax in the BQ web console
  - REVIEW the query 'Execution Details' to verify the actual query cost and execution ran as expected
  - ESTIMATE query cost before running the query using the `--dry_run` parameter 
 - AVOID using `SELECT * ...` in queries to reduce the amount of data scanned, speed up the query execution time and potentially reduce the cost of running the query

 
 RUN QUERY
 [![BigQuery query](/images/query.png)]()
 REVIEW QUERY RESULTS
 [![BigQuery results](/images/results.png)]()
 REVIEW EXECUTION PLAN (OPTIONAL)
  [![BigQuery plan](/images/plan.png)]()

### Other Things to Know
 
 - UNDERSTAND that BQ is a type of 'serverless' service, because you do NOT setup VMs or docker container clusters to use this service.  You simply upload your data, write your query and execute the query.  You are charged for query run time and BQ storage.  You are NOT charged for VMs, etc...
 - Use BQ best practices to manage service costs - [link](https://cloud.google.com/blog/products/data-analytics/cost-optimization-best-practices-for-bigquery) & one more [link](https://cloud.google.com/bigquery/docs/best-practices-costs) on the same topic
 - SEE example BQ SQL queries for genomics - [link](https://github.com/verilylifesciences/variant-qc/tree/master/sql)
 - USE BQ includes many genomic or annotation data sets, a list is shown below
 [![bq-public-data](/images/bq-public-data.png)]()

 -------


### How to learn more
SQL Links
 - 📘 Link to lessons, [practice SQL queries using a small, public GCP bioinformatics dataset](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-queries/SQLQuestions.md)
 - 📘 Link to [learn SQL - 12 questions](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises)
 - 📘 Link to [standard SQL syntax](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) used in Google BigQuery  
  - 📘 Link to [example genomics SQL queries](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#4) shown using Google BigQuery  
 
BigQuery Links
 - 📘 Link to [Understand BQ pricing](https://cloud.google.com/bigquery/pricing)
 - 📘 Link to [Save money when using BQ](https://www.linkedin.com/pulse/5-ways-save-money-google-bigquery-rob-larter/)
 - 📘 Link to [BQ Variants data schema](https://cloud.google.com/genomics/docs/how-tos/bigquery-variants-schema)
 - 📘 Link to [Load Variants into BQ](https://cloud.google.com/genomics/docs/how-tos/load-variants#transform-pipeline)
 - 📘 Link to [Analyze variants with BQ](https://cloud.google.com/genomics/docs/tutorials/analyze-variants-advanced)
 - :octocat: Link to [Example Genomics BQ queries](https://github.com/googlegenomics/bigquery-examples/tree/master/1000genomes)
 - 📘 Link to 60+ min Codelab [Analyze variants in BQ](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#0)
 - 📘 Link to [Example ISB-CGC tutorial](https://isb-cancer-genomics-cloud.readthedocs.io/en/latest/sections/progapi/bigqueryGUI/WalkthroughOfGoogleBigQuery.html)
  - 📘 Link to [Example NCBI-Sequence Read Archive (SRA) in BigQuery](https://www.ncbi.nlm.nih.gov/sra/docs/sra-bigquery/)
 - 📺 Watch [working with BigQuery datasets in Terra (GCP service) ](https://www.youtube.com/watch?v=jOmCCo3EJr0) - 40 minute video from the Broad
 - 📙 Try out BigQuery and BQ ML using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/3_Machine_Learning/Jupyter_Notebook_Examples)
 - 📺 Link to 6 minute screencast - [BigQuery Machine Learning](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-via-bigquery-ml)
[![bq-ml-demo](/images/bq-ml-demo.png)](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-via-bigquery-ml) 
