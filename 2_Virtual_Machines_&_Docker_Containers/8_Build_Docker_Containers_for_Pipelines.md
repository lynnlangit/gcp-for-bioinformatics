# Build Docker Containers for Pipelines

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster

### What is this
 - Creating reusable, scalable container images for scalaing your analysis jobs on various GCP libraries
 - There are several steps in the process, these are shown in the screenshot below

[![tool-to-docker](/images/tool-to-docker.png)]()

NOTES: Singularity is a type of container used for specialized compute environments (mostly NOT GCP). Container images can be run on GCP in GCE (VMs)
or as part of a cluster of containers.  If a cluster, then a container orchestration API or service is generally added.  Kubernetes is the most popular open source container orchestrator.  GCP has GKE (Google Kubernetes Service).  Alternatively, there are a number of bioinformatics APIs that can orchestrate containers on GCP.  These include cromwell, dsub and Nextflow.io.

### Key considerations
 - You must evaluate, select, configure and test container orchestration method
 - You can orchestrate container workloads with Kubernetes, cromwell, or Nextflow
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
 - Link to 'how to set up a billing alert'
 - Link to 'core GCP security practices'