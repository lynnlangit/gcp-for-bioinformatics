
# Use Cloud SQL to store data

### Why do this
 - STORE data on GCP that is...
    - stored in tables
    - updated frequently & needs to be transactionally consistant 
    - needs to be joined between multiple tables
    - is in a database that is 10 GB or less
    - you'd like routine database maintainence tasks, such as database backups to happen automatically

### What is this
 - Cloud SQL instances are fully managed, relational MySQL and PostgreSQL databases. Google handles replication, patch management and database management to ensure availability and performance

### Key considerations
 - Is this the right service for your workload? 
 - Relational workloads are those with data in tables that is changed (insert, update or delete) frequently
 - If you need to query data stored in files (rather than in tables) using the SQL query language, then you will probably want to use the BigQuery service, rather than CloudSQL

### How to do this
 - CREATE an instance of Cloud SQL
 - CREATE a database
 - ADD data and verify (query it using the SQL language)
 - QUERY your data as needed

### 📺 Click to see Lynn's 4 minute exploration of this section  
[![GCP CloudSQL for Bioinformatics](http://img.youtube.com/vi/ceqG90ZFstc/0.jpg)](http://www.youtube.com/watch?v=ceqG90ZFstc "GCP CloudSQL for Bioinformatics")

### How to verify you've done it
 - QUERY to verify the added data using the GCP console, script or a locally-installed MySQL client tool
 - WRITE your queries using the ANSI-SQL query data query language

### Other Things to Know
 - Max size of database for CloudSQL - [link](https://cloud.google.com/sql/docs/quotas)
 - GCP has a service which allows you to migrate data from on premises into a Cloud SQL instance - [link](https://cloud.google.com/sql/docs/mysql/migrate-data)
 - Google has another service, Cloud Spanner - [link](https://cloud.google.com/spanner/), which is designed to host massively-scalable, frequently updated, transactionaly consistant relational databases

### How to learn more
 - 📘 Link to [Best practices for importing data into Cloud SQL](https://cloud.google.com/sql/docs/mysql/import-export/)
 - 📘 Link to [20 minute Codelab for Cloud SQL](https://codelabs.developers.google.com/codelabs/cloud-create-cloud-sql-db/index.html)
