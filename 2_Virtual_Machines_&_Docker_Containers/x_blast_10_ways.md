# Blast 10 Ways

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - You want to 'try out' different methods of deploying a tool on the cloud
 - You want to use a 'hello world' (simple) example to understand how bioinformatics APIs work
 - You want to understand which cloud services to use for analysis (compute) jobs

### What is this
 - Run the bioinformatics blast tool multiple ways: in a VM, in a container, with a Jupyter notebook,
 using Terra, using Nextflow, etc...

### Key considerations
 - You will need to build a docker container image with blast to try out many of the methods

### How to do this
 - You can build your own image, by writing a dockerfile, getting the docker tools and using them to build an image, or you can use my public image(s) on DockerHub
 - You then use the blast binary and/or docker image in conjunction with deployment APIs and tools

### How to verify you've done it
 On your laptop   
- (0) Install and run blast  
- (1) install docker tools  
    - use Jupyter notebook to install blast   
    - run blast in a container   

In GCP  
- (2) Run blast on a GCE VM, run a blast container on GCE VM w/'run container' option checked  
- (3) Run blast container on GCE Jupyter VM, use notebook to connect run blast  
- (4) Run blast container on GKE in a Kubernetes cluster  
- (5) Run blast on GCE w/Google Genomics pipelines API  
- (6) Run blast on GCE w/ dsub  
- (7) Run blast on GCE w/ Nextflow  
- (8) Run blast on Galaxy via Galaxy Toolshed  
- (9) Run blast on Terra.bio as a Jupyter notebook which installs blast  
- (10) Run blast container on Terra.bio after creating 2 WDL files and registering in Dockstore

### Other Resources
 - DOCKERFILE with notebook that downloads blast: on GitHub - [link](https://github.com/lynnlangit/blastn-jupyter-docker)
 - Jupyter container downloads blast on Dockerhub - [link](https://cloud.docker.com/repository/docker/lynnlangit/blastn-jupyter-docker)
 - DOCKERFILE includes blast: on GitHub - [link](https://github.com/lynnlangit/blastn)
 - Blast container image on DockerHub - [link](https://cloud.docker.com/repository/docker/lynnlangit/blastn)
 - Blast WDL tool and workflow on Dockstore - [link](https://dockstore.org/my-workflows/dockstore.org/lynnlangit@gmail.com/blastn)

### How to learn more
 - Link to more...
