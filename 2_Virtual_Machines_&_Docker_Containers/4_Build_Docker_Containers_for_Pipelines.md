# Build Docker Containers for Pipelines

### Why do this
 - You want to use tools, libraries or APIs that require docker container images to be able to scale your analysis jobs
 - You want to capture tool configuration (as an image) for reproducible research
 - You want to use Docker containers

### What is this
 - Creating reusable, scalable docker container images for scalaing your analysis jobs on various GCP services (VMs, Kubernetes, Nextflow, Terra, others...)
 - Describe your tool location (local or code repo, such as GitHub), required (and optional) data inputs and outputs and tool configuration via a DOCKERFILE -> use docker tools to build into a container image
 - There are several steps in the process, these are shown in the screenshot below

[![tool-to-docker](/images/tool-to-docker.png)]()

NOTES: 
 - Singularity is a type of container used for specialized compute environments (mostly NOT GCP). 
 - Container images can be run on GCP in GCE (VMs)
or as part of a cluster of containers.  
 - If a cluster of container instances, then a container orchestration API or service is generally added.  
 - Kubernetes is the most popular open source container orchestrator.  GCP has GKE (Google Kubernetes Service).  Alternatively, there are a number of bioinformatics APIs that can orchestrate containers on GCP.  These include cromwell, dsub and Nextflow.

### Key considerations
 - You must evaluate, select, configure and test your preferred container orchestration method, i.e. run on VMs, Kubernetes, Terra, etc...
 - You can orchestrate container workloads with Kubernetes, cromwell, or Nextflow
 - You may choose to use a higher-level service, such as Terra.bio, which handles most of the container scaling configuration for you

### How to do this
 - If using Kubernetes,  build a Kubernetes (or K8) cluster using GKE/Google Kubernetes service, then add your container image as a service on pods in that cluster (start or run your tools on those containers)

### How to verify you've done it
 - Review output data (usually stored in Cloud Storage buckets)
 - Review job / analysis log files
 - Review Stackdriver logs for your cluster job executions

### Other Things to Know
 - Building a docker container includes best practices
 - Configuration, tuning and securing kubernetes clusters is complex

### How to learn more
 - Link to [3 minutes to containers - for bioinformaticians](https://medium.com/series/running-containers-for-biologists-75d6dccbbf7c)
 - Link to an example - [Blastn container files](https://github.com/lynnlangit/blastn)