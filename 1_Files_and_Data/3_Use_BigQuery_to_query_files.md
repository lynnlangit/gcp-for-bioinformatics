# Use BigQuery to Query Files

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster

### What is this
 - Ability to perform Compute on Data at scale 
 - Ability to execute ansi SQL queries on files stored in Cloud Storage of BQ Storage

### Key considerations
 - Understand how BQ billing works - you are charged by the amount of data scanned
 - Starts at $5/TB scanned
 - Estimate cost using the '--dry_run' parameter 
 - Use BQ best practices to manage service costs - [link](https://cloud.google.com/bigquery/docs/best-practices-costs)

### How to do this
 - Learn SQL syntax - [link](https://www.w3schools.com/sql/sql_intro.asp)
 - Request account from your organization -or-
 - Setup free tier (testing) account

### How to verify you've done it
 - Verify the query cost BEFORE you run it 
 - Validate the SQL syntax in the BQ web console
 - Execute your query and verify results match expected output

### Other Things to Know
 - Use GCP Billing tools (& budgets)
 - Understand GCP service limits by account type
 - Follow GCP security best practices

### How to learn more
 - Link to [Understand BQ pricing](https://cloud.google.com/bigquery/pricing)
