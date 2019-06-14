# Use GCP for Serverless Compute


### Why do this
 - You have stateless, short-term compute tasks
 - Your analysis job tasks can be run individually, or chained into a workflow (or pipeline)
 - You only want to pay **when a function is called (or invoked)**, rather than for a long-running VM or container

### What is this
 - Use functions rather than containers or VMs for compute
 - Use GCP Cloud Functions or Cloud Run to host your function(s) on GCP

### Key considerations
 - In Cloud Functions, you supply the code, GCP runs your code on containers/VMs, but you don't see or manage any infrastructure
 - In Cloud Run, you supply the code and container file (Dockerfile), GCP builds, registers and runs your container image. Your function can be called via HTTP requests
 - State is NOT automatically saved after the function is invoked.  If you need to persist information, then you must write the logic to save the output to files (bucket) or a database and then to retrieve that information in a later part of the workflow

### How to do this
 - Select the GCP service (Functions or Cloud Run)
 - Write your function code and upload to the service
 - Test and monitor your service

### How to verify you've done it
 - Invoke the function manually or via a test script
 - Read the Stackdriver logs to see the result of the function invocation

### Other Things to Know
 - Serverless patterns are often used for workloads that have spikes in demand
 - Serverless autoscales (to your GCP account limits) by default
 - GAE (AppEngine) is a serverless service which can be used to host web sites and support common programming language.  Python example [here](https://cloud.google.com/appengine/docs/python/)

### How to learn more
 - Link to [choosing a serverless option](https://cloud.google.com/serverless-options/)
 - Link to [Try Cloud Run from a GitHub Repo](https://github.com/lynnlangit/hello-cloud-run).  Shown below is the output in Cloud Shell after you click the 'try cloud run' button in the GitHub repo.  The following actions run -> CloudRun API enabled, Docker container image is built and registered at Google Container Registry and then deployed as a service to Cloud Run.

 ![cloud-run](/images/cloud-run.png)
