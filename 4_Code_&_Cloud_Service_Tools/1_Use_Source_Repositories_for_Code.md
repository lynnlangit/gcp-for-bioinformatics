# Use Source Repositories for Code Source Control

### Why do this
 - USE GCP to host your reasearch job(s) source code
 - BUILD a [CI/CD pipeline](https://cloud.google.com/solutions/continuous-delivery/) on GCP 

### What is this
 - Code repository hosted on GCP - can be new or mirror of existing code repo
 - Supports integration with GitHub or Bitbucket

### Key considerations
 - Source Repositories can be easily integrated with other GCP services, such as Cloud Storage
 - Use integrated code source repositories to build a CI/CD pipeline using other GCP services, such as CloudBuild

### How to do this
 - CREATE a new or connect an existing code repository (GitHub or Bitbucket) to get started
 - DO the quickstart to create a new Source Repository - [link](https://cloud.google.com/source-repositories/docs/quickstart)
 - SET UP authentication - Cloud Source Repositories supports the following types of authentication: SSH, Cloud SDK or
manually generated credentials - [link](https://cloud.google.com/source-repositories/docs/authentication)

### How to verify you've done it
 - VIEW your Source Repository via the GCP console - example shown below
 - PUSH (or pull) code from your Source Repo

 [![source-repo](/images/source-repo.png)]()

### Other Things to Know
 - Use integrated search to intelligently search any Source Repository code - [link]()https://cloud.google.com/source-repositories/docs/searching-code
 - Source Repositories are integrated with Stackdriver activity log readers

### How to learn more
 - 📘 Read 'Gitops CI/CD with Cloud Build and Source Repositories' [link](https://cloud.google.com/kubernetes-engine/docs/tutorials/gitops-cloud-build)