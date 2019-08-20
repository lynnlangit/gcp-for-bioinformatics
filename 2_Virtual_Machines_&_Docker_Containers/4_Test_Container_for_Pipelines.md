# Test Container for Pipelines

### Why do this
 - SCALABILITY - package tools, libraries or APIs that into docker container images to be able to scale your analysis jobs more efficiently than when using VMs (comparsion shown below)
 - REPRODUCIBILITY - capture tool configuration (as an image) for reproducible research

 [![vms-containers](/images/vms-containers.png)]()

### What is this
 - CONTAINER IMAGE -> 
   - LOCATE (or BUILD) and use reusable docker container images (rather than VMs) for scalaing your analysis jobs on various GCP pipelines (VMs, Kubernetes, Nextflow, Terra, others...)
   - Intro to Containers - [link](https://cloud.google.com/containers/)
 - DOCKERFILE -> 
   - USED by docker daemon to build contents into a container image
   - EXAMPLE dockerfile shown below

[![blastn-dockerfile](/images/blastn-dockerfile.png)]()

### Key considerations

IMPORTANT: Building containers is a complex skill set, **prefer to find and reuse existing container images**, rather than building your own container images
 - FIND existing containers by searching for a tool (i.e. 'gatk' etc... on public container registries - see list in next section & example below)
 - SEE Biocontainers for an intro to container technologies - [link](https://biocontainers-edu.readthedocs.io/en/latest/)
 

  [![biocontainers-search](/images/biocontainers-search.png)]()
 
 After you build and test your container, to run an analysis at scale, you must evaluate, select, configure and test your preferred container **orchestration** method. You could orchestrate container workloads with a number of methods -- Compute Engine VMs, Kubernetes clusters... Alternatively, you may choose to use a higher-level service, such as Terra.bio, which handles most of the container scaling configuration for you.

### How to do this
0. LOCATE, REVIEW and TEST an existing DOCKER CONTAINER IMAGE  
   from a public container image registries such as... by searching for the tool name (i.e. bamstats, samtools, etc...)
   - [DockerHub](https://hub.docker.com)
   - [Quay.io](https://quay.io/) 
   - [Biocontainers](https://biocontainers.pro/#/)
   - [Google Container Registry](gcr.io) for GCP for public or private images  

--or--
1. BUILD and TEST your own DOCKER CONTAINER IMAGE
    - Link to [Create a docker image the easy way](https://software.broadinstitute.org/firecloud/documentation/article?id=9453)
 
2. RUN YOUR CONTAINER IMAGE ON GCP
   - Select Compute Engine or Kubernetes Engine as a target environment to run your container image
   - If using Compute Engine, check 'use container optimized image' option - [more info](https://cloud.google.com/compute/docs/containers/deploying-containers)
   - Connect via SSH to your VM
      - Use `docker image ls` to get the name of your container instance
      - Use `docker run <image id>` to start your container instance
      - Use `docker ps` to get the name of the running container
      - Use the command `docker exec -it <container name> /bin/bash` to get a bash shell in the container
----

### 📺 Click to see Lynn's 6 minute exploration of this section  
[![Test Container on GCE for Bioinformatics](http://img.youtube.com/vi/Rq4wNbdylWs/0.jpg)](http://www.youtube.com/watch?v=Rq4wNbdylWs "Test Container on GCE for Bioinformatics")

### How to verify you've done it

 - Review output data (usually stored in Cloud Storage buckets)
 - Review job / analysis log files
 - Review [Stackdriver logs](https://cloud.google.com/logging/docs/view/overview) for your cluster job executions

### Other Things to Know
 - Building a docker container via best practices - [link](https://biocontainers-edu.readthedocs.io/en/latest/best_practices.html)
 - Running containers on container-optimized GCP Compute Engine VMs - [link](https://cloud.google.com/compute/docs/containers/deploying-containers)
 - Configuration, tuning and securing VM or K8 clusters is an advanced skill set

 - BUILDING IMAGES YOURSELF - There are several steps in the process, these are shown in the screenshot below

[![tool-to-docker](/images/tool-to-docker.png)]()

NOTES: 
 
 - Container images can be run on GCP in GCE (VMs) or as part of a cluster of containers.  
   - If a cluster of container instances, then a container orchestration API or service is generally added.  
   - Kubernetes (K8) is the most popular open source container orchestrator.  GCP has GKE (Google Kubernetes Service).  Alternatively, there are a number of bioinformatics APIs that can orchestrate containers on GCP.  These include cromwell, dsub and Nextflow.
 - Best practice is include only small, public example data in the Dockerfile (docker image).  Use Cloud Storage buckets to store your research data.
 - [Singularity containers](http://singularity.lbl.gov/) are used for specialized compute environments such as HPC (and mostly NOT used on GCP pipelines). 

### How to learn more
 - 📘 Link to [Run a blastn container](https://biocontainers-edu.biocontainers.pro/en/latest/running_example.html)
  - 📘 Link to [Run a R Shiny app (in a container) on a GCE VM](https://cloudyr.github.io/googleComputeEngineR/articles/shiny-app.html)
 - :octocat: Link to DOCKERFILE source code example - [Blastn container files](https://github.com/lynnlangit/blastn)
 - 📺 Link to [Building a Container from scratch](https://www.youtube.com/watch?v=Utf-A4rODH8) ~20 min. screencast video, includes advanced concepts (namespaces, more)
  - 📺 Watch [using Docker containers on Terra](https://www.youtube.com/watch?v=jv_HSFBYOJs) - 22 minute video from the Broad Institute. Terra runs on GCP
  - :octocat: Link to [Examples of running bioinformatics tools with containers using CWL](https://github.com/genome/analysis-workflows) - common workflow language