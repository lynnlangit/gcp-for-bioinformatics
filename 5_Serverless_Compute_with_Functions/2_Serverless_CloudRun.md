# Serverless Cloud Run

### Why do this
 - You have stateless, short-term compute tasks
 - Your analysis job tasks can be run individually, or chained into a workflow (or pipeline)
 - You only want to pay **when a function is called (or invoked)**, rather than for a long-running VM or container

### What is this
 - Use functions where you supply your own containers, rather than GCP-supplied containers or VMs for compute
 - Use GCP Cloud Run to host your function(s) on GCP

### Key considerations
 - In Cloud Run, you supply the code and container file (Dockerfile), GCP builds, registers and runs your container image. Your function can be called via HTTP requests
 - State is NOT automatically saved after the function is invoked.  If you need to persist information, then you must write the logic to save the output to files (bucket) or a database and then to retrieve that information in a later part of the workflow

### How to do this
 - Write and test your function code
 - Build a docker image w/that code by running 'docker build....' on a DOCKERFILE
 - Register your docker container image in Google Container Registry
 - Associate your image to CloudRun 
 - Test and monitor your service

### How to verify you've done it
 - Invoke the function manually or via a test script
 - Read the Stackdriver logs to see the result of the function invocation

### Other Things to Know
 - Serverless patterns are often used for workloads that have spikes in demand
 - Serverless auto-scales (to your GCP account limits) by default
 - Cloud Run has two execution modes - within CloudRun and CloudRun for Kubernetes (GKE)
 - GAE (AppEngine) is a serverless service which can be used to host web sites and support common programming language.  Python example [here](https://cloud.google.com/appengine/docs/python/)

### How to learn more
 - Link to [choosing a serverless option](https://cloud.google.com/serverless-options/)
 - Link to [Try Cloud Run from a GitHub Repo](https://github.com/lynnlangit/hello-cloud-run).  Shown below is the output in Cloud Shell after you click the 'try cloud run' button in the GitHub repo.  The following actions run -> CloudRun API enabled, Docker container image is built and registered at Google Container Registry and then deployed as a service to Cloud Run.  
 - Link to "What is Cloud Run?" 3 minute demo video - [link](https://www.linkedin.com/learning/google-cloud-platform-essential-training-3/google-cloud-run)

 ![hello-cloud-run](/images/hello-cloud-run.png)
--builds a docker container from the Dockerfile   
--registers the container image on gcr.io  
 ![container-registry](/images/container-registry.png) 
--creates a serverless function from the container image
 ![cloud-run](/images/cloud-run.png)  
- Do a GCP Codelab to use CloudRun on GKE(K8) - [link](https://codelabs.developers.google.com/codelabs/cloud-run-gke/)



