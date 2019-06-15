# Use Terra.bio for Compute Workflows

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster
 - You would like to use best-practice bioinformatics workflows rather than author jobs yourself 
 - You would like to use GCP without manually configuring storage and VMs

 [![terra-features](/images/terra-features.png)]()


### What is this
 - Use best-practice workflows for bioinformatics that run on pre-configured GCP services (VMs and storage buckets)
 - You have a number of choices - this article covers the items highlighted in RED SQUARES

[![terra](/images/terra.png)]()


### Key considerations
 - You can use pre-created workflows or create your own workflow
 - You must configure inputs and outputs for all types of workflows
 - If you are creating a custom workflow to run on Terra.bio, then you must first create docker container images for your custom scripts or tools
 - Size & complexity of your workload 
 - Your budget and your timeline

### How to do this
 - Select account type
 - Request account from your organization -or-
 - Setup free tier (testing) account

### How to verify you've done it
 - Login to GCP console
 - Verify your account
 - Verify your envionment

### Other Things to Know
 - Terra uses the GCP Genomics/Pipelines API

### How to learn more
 - Link to 'how to set up a billing alert'
 - Link to 'core GCP security practices'