# Use cromwell and WDL for Pipelines

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster

### What is this
 - Ability to perform Compute on Data at scale 
 - Running on services hosted by GCP
  - You have a number of choices - this article covers the items highlighted in RED SQUARES

[![cromwell](/images/cromwell.png)]()

### Key considerations
 - Can be used with VMs or Docker container Images
 - Use Your Organization's Account
 - Size & complexity of your workload 
 - Your budget
 - Your timeline

### How to do this
 - Select account type
 - Request account from your organization -or-
 - Setup free tier (testing) account

### How to verify you've done it
 - Login to GCP console
 - Verify your account
 - Verify your envionment

### Other Things to Know
 - Use GCP Billing tools (& budgets)
 - Understand GCP service limits by account type
 - Follow GCP security best practices

### How to learn more
 - Link to [run a GATK best practices pipeline](https://cloud.google.com/genomics/docs/tutorials/gatk)
 - Link to 'core GCP security practices'