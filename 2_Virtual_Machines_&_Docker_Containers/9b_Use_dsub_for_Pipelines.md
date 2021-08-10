# Use dsub & Google Genomics (Pipelines) API

### Why do this
 - USE the dsub tool to scale your analysis job
 - USE a docker container image to run your your bioinformatics script or tool

### What is this
 - An alternative to the gcloud tool, dsub adds user interfaces and workflow definition features that supplement the GCP Pipelines API 
 - Running on services hosted by GCP using the Google Genomics (Pipelines) API for Compute Engine.  The Genomics API provides orchestration for mulitple GCE VM instances.
 - The dsub user experience is modeled after traditional high-performance computing job schedulers like Grid Engine and Slurm. 
 - You write a script and then submit it to a job scheduler from a shell prompt on your local machine.
 - dsub supports GCP as the backend batch job runner, along with a local provider for development and testing - [more info](https://github.com/DataBiosphere/dsub/blob/master/docs/providers/README.md#google-v2-provider)

### Key considerations
 - Configure your dsub to use your container image using the `--image` parameter

### How to do this
 - USE GCP Cloud Genomics tutorial - [link](https://cloud.google.com/genomics/docs/tutorials/dsub)
 - Deploy a SLURM cluster on GCP tutorial - [link](https://cloud.google.com/architecture/deploying-slurm-cluster-compute-engine)

 ---
 ### 📺 Click to see Lynn's 4 minute exploration of this section  
[![dsub on GCP for Bioinformatics](http://img.youtube.com/vi/zWHspeEuPs0/0.jpg)](http://www.youtube.com/watch?v=zWHspeEuPs0 "dsub on GCP for Bioinformatics")
----


### How to verify you've done it
 - VERIFY that the expected (files) output appears in the Cloud Storage bucket configured to get the job results

 

### Other Things to Know
 - Use dsub w/samtools - example - [link](https://github.com/DataBiosphere/dsub/tree/master/examples/samtools)

 [![dsub-code](/images/dsub-code.png)]()

### How to learn more
 - :octocat: Read dsub documentation on GitHub - [link](https://github.com/DataBiosphere/dsub)
