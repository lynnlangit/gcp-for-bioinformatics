# BigQuery SQL Queries & Datasets

### What is this & why do this
 - **Learn** SQL query concepts so that you can use Google Cloud Big Query service 
 - **Practice** SQL query concepts by writing & executing queries against BigQuery datasets

### How to do this
1. **READ** this page to review SQL concepts
2. **DO** the SQL Lessons (write queries as practice) 
3. **CREATE** your own copy of my public BQ dataset (optional) 
    - Get the source data (my example uses CSV files)
      - Format & clean data
        - Convert file-based data to tabular style 
        - use delimieters, i.e. tabs, commas, pipes
        - add headers
        - consider data types, i.e. strings, integers, floats
      - Upload & Convert file data to tables in BQ dataset
        - can use auto-detect schema if at least one numeric column per table
        - verify upload 
        - NOTE: watch out for white space in string columns in BigQuery!

Review the example BigQuery dataset schema and example data (graphic below)

  [![SQL example schema](/images/sql-data-model.png)]()

### Create your own BigQuery Dataset Example

 If you want to set up your own copy of the example BigQuery dataset, use the CSV files provided in this Repository
  - Get your source files or data - I used a set of CSV files
    - Review the structure and the data -> format and clean data
  - Create a BigQuery dataset using the Web UI
    - In your BigQuery dataset, create a BigQuery table for each CSV file 
    - you can use BigQuery 'auto-detect' table schema IF
      - your source files use tab, comma or pipe delimeters 
      - each file must have at least one non-string column, i.e. integer, float, date
      - you can set to skip 1 row if your source data has headers
      - be aware that BigQuery INCLUDES all white space in string fields, so if you want to remove that white space you must remove it in the source file before you create your BigQuery tables

### How to verify you've done it
 - View the dataset in your Bigquery tree (see below)
 - Click on each table to verify schema and data

### Other Things to Know
 - SQL is a set-based query language for data tables 
 - Joining table rows is a key concept. The graphic below shows join concepts

[![SQL Keywords](/images/joins.png)]()

### How to learn more
 - 📘 Link to [learn SQL - 12 questions](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises)
 - 📘 Link to [standard SQL syntax](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) used in Google BigQuery  
  - 📘 Link to [example genomics SQL queries](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#4) shown using Google BigQuery
 - 📘 Link to [learn SQL - 12 questions](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises)
 - 📘 Link to [standard SQL syntax](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax) used in Google BigQuery  
  - 📘 Link to [example genomics SQL queries](https://codelabs.developers.google.com/codelabs/genomics-vcfbq/#4) shown using Google BigQuery 
 
 