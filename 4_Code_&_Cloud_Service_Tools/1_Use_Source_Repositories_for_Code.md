# Use Source Repositories for Code Source Control

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - You want to use GCP to host your analysis source code
 - You want to build a CI/CD pipeline on GCP 

### What is this
 - Code repository hosted on GCP - can be new or mirror of existing repo

### Key considerations
 - Source Repositories can be easily integrated with other GCP services
 - Use integrated code source repositories to build a CI/CD pipeline using other GCP services, such as CloudBuild

### How to do this
 - Create a new or connect an existing code repository (GitHub or Bitbucket) to get started
 - Do the quickstart to create a new Source Repository - [link](https://cloud.google.com/source-repositories/docs/quickstart)


### How to verify you've done it
 - View your Source Repository via the GCP console
 - Push (or pull) code from your Source Repo

### Other Things to Know
 - Use integrated search to intelligently search any Source Repository code - [link]()https://cloud.google.com/source-repositories/docs/searching-code
 - Source Repositories are integrated with Stackdriver activity log readers

### How to learn more
 - Link to 'Gitops CI/CD with Cloud Build and Source Repositories' - [link](https://cloud.google.com/kubernetes-engine/docs/tutorials/gitops-cloud-build)