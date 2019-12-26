# SQL Concepts


### Why do this
 - Learn SQL concepts so that you can use the Google Cloud BigQuery service

### What is this
 - SQL concepts - keywords and query syntax

### Key considerations
 - SQL is used widely for querying data stored in relational tables

### How to do this
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
 