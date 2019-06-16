# Use dsub and Google Genomics for Pipelines

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster

### What is this
 - Ability to perform Compute on Data at scale 
 - Running on services hosted by GCP using the special purpose GCP Genomics (Pipelines) API for GCE (Compute Engine).  The Genomics API provides orchestration for mulitple GCE VM instances.
  - You have a number of choices - this article covers the items highlighted in RED SQUARES

[![dsub](/images/dsub.png)]()

### Key considerations
 - Can be used with VMs or Docker container Images
 - Use Your Organization's Account
 - Size & complexity of your workload 
 - Your budget
 - Your timeline

### How to do this
 - Use GCP Cloud Genomics tutorial - [link](https://cloud.google.com/genomics/docs/tutorials/dsub)

### How to verify you've done it
 - Login to GCP console
 - Verify your account
 - Verify your envionment

### Other Things to Know
 - Use GCP Billing tools (& budgets)
 - Understand GCP service limits by account type
 - Follow GCP security best practices

### How to learn more
 - Link to [Run a Sention DNAseq pipeline](https://cloud.google.com/genomics/docs/tutorials/sentieon)