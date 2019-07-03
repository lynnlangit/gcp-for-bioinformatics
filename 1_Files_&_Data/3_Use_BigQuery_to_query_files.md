# Use BigQuery to Query Files

### Why do this
 - You want to perform analysis on files using SQL statements
 - You want to pay by the query and to avoid setting up any infrastructure (VMs)

### What is this
 - Ability to perform queries on file data at scale
 - Ability to execute ansi SQL queries on files stored in Cloud Storage or BQ Storage

### Key considerations
 - Understand how BQ billing works - you are charged by the amount of data scanned
 - Starts at $5/TB scanned
 - Each query will estimate the amount of data scanned (shown below on the bottom right)
 - Google provides many public reference datasets (including 1000 Genomes) which you can query (below)

 [![BigQuery query](/images/query.png)]()

### How to do this
 - Learn SQL syntax - [link](https://www.w3schools.com/sql/sql_intro.asp)
 - Request account from your organization -or- Setup free tier (testing) account
 - Open BigQuery from the GPP console, write and review cost for a SQL query referencing a BQ dataset - link to example [analyze genomic variants with BQ](https://cloud.google.com/genomics/docs/tutorials/analyze-variants-advanced)
 - BQ Dataset can be files stored in GCS or BQ storage
 - Execute the query by clicking the 'run' button, example results shown below
 - You can view the results and/or save the results into a new file in a storage bucket

 [![BigQuery results](/images/results.png)]()

### How to verify you've done it
 - Verify the query cost BEFORE you run it 
 - Validate the SQL syntax in the BQ web console
 - Execute your query and verify that the results match the expected output
 - Review the query 'Execution Details' (example shown below) to verify the actual query cost and execution ran as expected.  Example shown below

  [![BigQuery plan](/images/plan.png)]()

### Other Things to Know
 - Estimate query cost before running the query using the '--dry_run' parameter 
 - Avoid using 'SELECT * ...' in queries
 - Use BQ best practices to manage service costs - [link](https://cloud.google.com/bigquery/docs/best-practices-costs)

### How to learn more
 - Link to [Understand BQ pricing](https://cloud.google.com/bigquery/pricing)
 - Link to [BQ Variants data schema](https://cloud.google.com/genomics/docs/how-tos/bigquery-variants-schema)
 - Link to [Load Variants into BQ](https://cloud.google.com/genomics/docs/how-tos/load-variants#transform-pipeline)
 - Link to [Analyze variants with BQ](https://cloud.google.com/genomics/docs/tutorials/analyze-variants-advanced)
 - Link to [Example Genomics BQ queries](https://github.com/googlegenomics/bigquery-examples/tree/master/1000genomes)
 - Link to 60+ min Codelab [Analyze variants in BQ](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#0)
 - Link to [Example ISB-CGC tutorial](https://isb-cancer-genomics-cloud.readthedocs.io/en/latest/sections/progapi/bigqueryGUI/WalkthroughOfGoogleBigQuery.html)
