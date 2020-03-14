# SQL Concepts


### What is this & why do this
- SQL concepts - keywords and query syntax
- Learn SQL concepts so that you can use the Google Cloud BigQuery service
- SQL is used widely for querying data stored in relational tables

### How to do this
1. **READ** this page to review SQL concepts
2. **DO** the SQL Lessons (write queries as practice)  

The process to prepare to query data using Google Cloud Big Query is as follows:
 - Get data (can be in files)
    - Format and clean data
    - Convert file-based data to tabular style 
      - use delimieters, i.e. tabs, commas, pipes
      - add headers
      - consider data types, i.e. strings, integers, floats
    - Select database or data query service (such as Google Big Query)
      - upload and convert file data to tables in database or dataset
      - can use auto-detect schema if at least one numeric column per table
      - verify upload NOTE: watch out for white space in string columns in BigQuery!
 - USE SQL Keywords to query data
    - Review query results for accuracy


 [![SQL Keywords](/1_Files_&_Data/SQL-concept-graphics/keywords.png)]()

### How to verify you've done it
 - Query to verify schema and data uploaded  
  TIP: Can do row count total queries



### Other Things to Know
 - SQL is a set-based query language for data tables 
 - Joining table rows is a key concept. The graphic below shows join concepts

[![SQL Keywords](/1_Files_&_Data/SQL-concept-graphics/joins.png)]()


### How to learn more
 - 📘 Link to [learn SQL - 12 questions](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises)
 - 📘 Link to [standard SQL syntax](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) used in Google BigQuery  
  - 📘 Link to [example genomics SQL queries](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#4) shown using Google BigQuery 


  # SQL Lessons


### What is this & why do this
 - **Learn** SQL query concepts so that you can use Google Cloud Big Query service 
 - **Practice** SQL query concepts by writing and executing queries against BigQuery datasets

### How to do this
- Sign up for a Google Cloud account (can use free trial credits if new account)
  - Create a Google Cloud Project and then enable the BigQuery service for that project
  - Navigate to the BigQuery Web UI for your Google Cloud Project
- Review the example BigQuery dataset schema and example data (graphic below)

  [![SQL Keywords](/1_Files_&_Data/SQL-concept-graphics/sql-data-model.png)]()

### How to verify you've done it
 - Write and execute your queries in the BigQuery interface
  TIP: You can review the provided query answers, run those queries and compare query results


### Other Things to Know
 - If you want to set up your own copy of the example BigQuery dataset, use the CSV files provided in this Repository
  - Get your source files or data - I used a set of CSV files
    - Review the structure and the data -> format and clean data
  - Create a BigQuery dataset using the Web UI
    - In your BigQuery dataset, create a BigQuery table for each CSV file 
    - you can use BigQuery 'auto-detect' table schema IF
      - your source files use tab, comma or pipe delimeters 
      - each file must have at least one non-string column, i.e. integer, float, date
      - you can set to skip 1 row if your source data has headers
      - be aware that BigQuery INCLUDES all white space in string fields, so if you want to remove that white space you must remove it in the source file before you create your BigQuery tables


### How to learn more
 - 📘 Link to [learn SQL - 12 questions](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises)
 - 📘 Link to [standard SQL syntax](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) used in Google BigQuery  
  - 📘 Link to [example genomics SQL queries](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#4) shown using Google BigQuery 
 
 