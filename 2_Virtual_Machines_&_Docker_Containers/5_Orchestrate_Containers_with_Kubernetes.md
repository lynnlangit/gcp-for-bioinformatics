# Orchestrate Containers with Kubernetes

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - You want to scale your analysis pipeline using containers with Kubernetes container clusters
 - You want to use docker container images for your bioinformatics scripts or tools
 - You have built docker container images for your bioinformatics scripts or tools

### What is this
 - Using Kubernetes (K8) as a container orchestration, coordination and scaling service
 - Use K8 to effectively scale up pipelines for large scale analysis jobs
 - You have a number of choices when scaling up pipelines - this article covers the items highlighted in RED SQUARES

[![K8](/images/k8.png)]()

### Key considerations
 - Kubernetes is very powerful, but also very complex
 - K8 provides for very granular control over cluster scaling, however it requires deep understanding of K8 configurations and best practices to run effectively
 - K8 is open source and runs on most public clouds or locally, making it very flexible

### How to do this
 - Use GKE to create a K8 cluster
 - Add your workload by creating service instance based on your docker container images
 - Configure and tune your cluster resources (CPU, memory, etc...) to suit the size of your analysis
 - You can view your job in the K8 Web UI - example shown below - [link](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/)

 [![K8 web ui](/images/k8-webui.png)]()

### How to verify you've done it
 - Run your analysis, monitor for correct results
 - Monitor for service cost, execution time and adjust to meet your requirements

### Other Things to Know
 - Google is building many libraries to ease the complexity of K8 cluster management
 - K8 libraries includes KNative, Istio, Skaffold and many others
 - There are also tool vendors who are creating products to help you create, monitor and scale K8 clusters

### How to learn more
 - Link to [Best Practices for operating containers on GCP](https://cloud.google.com/solutions/best-practices-for-operating-containers)