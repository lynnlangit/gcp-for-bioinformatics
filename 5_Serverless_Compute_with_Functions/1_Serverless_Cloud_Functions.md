# Serverless Cloud Functions

### Why do this
 - RUN stateless, short-term compute tasks
 - RUN Your analysis job tasks can be run individually, or chained into a workflow (or pipeline)
 - PAY only  **when a function is called (or invoked)**, rather than for a long-running VM or container

### What is this
 - Use Google Cloud Functions (rather you managing containers or VMs) for compute
 - Google Cloud Functions is a lightweight, event-based, asynchronous compute solution that allows you to create small, single-purpose functions that respond to cloud events without the need to manage a server or a runtime environment

### Key considerations
 - In Cloud Functions, you supply the code, GCP runs your code on Google's containers/VMs, but you don't see or manage any infrastructure
 - Configure the memory allocated for your functions (128MB - 2GB)
 - Cloud Functions code can be written in Go, Node or Python
 - Cloud Functions can be invoked by calls from any of the following:
    - HTTP
    - Cloud Pub/Sub
    - Cloud Storage
    - Cloud Firestore
    - Google Analytics for Firebase, Firebase Authentication, Firebase Realtime Data
    - Google Compute Engine
    - BigQuery
 - In Cloud Run, you supply the code and container file (Dockerfile), GCP builds, registers and runs your container image. Your function can be called via HTTP requests
 - State is NOT automatically saved after the function is invoked.  If you need to persist information, then you must write the logic to save the output to files (bucket) or a database and then to retrieve that information in a later part of the workflow

### How to do this
 - WRITE your function code in the console or zip and upload to Cloud Functions
 - CONFIGURE Cloud Function instance parmeters (amount of memory...)  - screenshot below
 - TEST (invoke) and monitor your service

 [![function-config](/images/function-config.png)]()

### How to verify you've done it
 - INVOKE the function manually or via a test script - see screenshot
 - REVIEW the Stackdriver logs to see the result of the function invocation see screenshot below

[![function-verify](/images/function-verify.png)]()
[![function-logs](/images/function-logs.png)]()

### Other Things to Know
 - Serverless patterns are often used for workloads that have spikes in demand
 - Using 'Advanced Options' you can set an upper limit for 'maximum function instances' in scenarios with spikes in demand
 - Serverless autoscales (to your GCP account limits) by default
 - GAE (AppEngine) is a serverless service which can be used to host web sites and support common programming language.  Python example [here](https://cloud.google.com/appengine/docs/python/)

### How to learn more
 - 📘 Link to [choosing a serverless option](https://cloud.google.com/serverless-options/)
 - 📘 Link to [serving a TensorFlow model on a Cloud Function endpoint](https://cloud.google.com/blog/products/ai-machine-learning/how-to-serve-deep-learning-models-using-tensorflow-2-0-with-cloud-functions)
 
