
# Use Cloud SQL to store data

### Why do this
 - You need to store data that is...
    - stored in tables
    - updated frequently and needs to transactionally consistant 
    - needs to be joined between multiple tables
    - is in a database that is 10 GB or less
    - you'd like routine database maintainence tasks, such as database backups to happen automatically

### What is this
 - Managed MySQL instaces


### Key considerations
 - Is this the right service for your workload?
 - If you need to query files using SQL, you will probably want to use BigQuery

### How to do this
 - Create an instance of Cloud SQL
 - Create a database
 - Add data and verify (query it)

### How to verify you've done it
 - Query to verify the added data using the GCP console, script or a locally-installed MySQL client tool

### Other Things to Know
 - Max size of database for CloudSQL - [link](https://cloud.google.com/sql/docs/quotas)
 - Google has another service, Cloud Spanner - [link](https://cloud.google.com/spanner/), which is designed to host massively-scalable, frequently updated, transactionaly consistant relational databases

### How to learn more
 - Link to 'how to set up Cloud SQL'
