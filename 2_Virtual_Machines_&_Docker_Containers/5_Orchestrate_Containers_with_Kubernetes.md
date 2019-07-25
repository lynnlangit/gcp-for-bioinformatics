# Orchestrate Containers with Kubernetes

### Why do this
 - SCALE your analysis pipeline using containers with Kubernetes (K8) container clusters
 - USE pre-built docker container images to run your bioinformatics scripts or tools at scale
 - USE custom built docker container images for your bioinformatics scripts or tools

### What is this
 - Use K8 as a container orchestration, coordination and scaling service
 - Use K8 to effectively scale up pipelines for large scale analysis jobs

### Key considerations
 - Kubernetes is very powerful, but also very complex. It is typical to have a dedicated TEAM of K8 DevOps professionals to setup, manage and maintain pipelines.
 - K8 provides for very granular control over cluster scaling, however it requires deep understanding of K8 configurations and best practices to run effectively
 - K8 is open source and runs on most public clouds or locally, making it very flexible

### How to do this
 - USE GKE (Google Kubernetes Engine) to create a K8 cluster - you can start with a single node (or one container instance)
 - ADD to your workload by creating service instance based on your docker container images
 - CONFIGURE and tune your cluster resources (CPU, memory, etc...) to suit the size of your analysis
 - VIEW your job in the K8 Web UI - example shown below - [link](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/)

 [![K8 web ui](/images/k8-webui.png)]()

 -----

 ### 📺 Click to see Lynn's 7 minute exploration of this section  
[![Orchestrate Containers on GKE for Bioinformatics](http://img.youtube.com/vi/yihR2wHTz4U/0.jpg)](http://www.youtube.com/watch?v=yihR2wHTz4U "Orchestrate Containers on GKE for Bioinformatics")

### How to verify you've done it
 - Run your analysis, monitor for correct results
 - Monitor for service cost, execution time and adjust to meet your requirements
 

### Other Things to Know
 - Google is building many libraries to ease the complexity of K8 cluster management
 - K8 libraries includes [KNative](https://knative.dev/docs/), [Istio](https://cloud.google.com/istio/docs/), [Skaffold](https://skaffold.dev/docs/) and many others
 - There are also tool vendors who are creating products to help you create, monitor and scale K8 clusters

### How to learn more
 - 📘 Link to [Best Practices for operating containers on GCP](https://cloud.google.com/solutions/best-practices-for-operating-containers)