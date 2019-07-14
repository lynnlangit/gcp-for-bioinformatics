# Use Deployment Manager 

### Why do this
 - You want to script the service configuration of your research job(s) 
 - You want to reproduce your analysis on another GCP environment (or other public cloud)

### What is this
 - A GCP Deployment is a YAML file which describe a set of GCP services and their configuration properties.  
 - A configuration must contain a `resources: section` followed by the list of resources to create. Each resource must contain three components:
    - **name** - A user-defined string to identify this resource such as my-vm, project-data-disk, the-test-network.
    - **type** - The type of the resource being deployed such as compute.v1.instance, compute.v1.disk. 
    - **properties** - The parameters for this resource type. They must match the properties for the type such as zone: asia-east1-a, boot: true.
 - A configuration can contain **templates**, which are parts of the configuration file that have been abstracted into individual building blocks. 
    - Templates are written in either Python or Jinja2
    - The Deployment Manager system will interpret each template recursively & inline the results within the configuration file

### Key considerations
 - Use GCP Deployments to package GCP service for re-deployment on other GCP accounts
  - Use [Terraform templates](https://www.terraform.io/docs/providers/template/d/file.html) rather than GCP Deployments for cross-cloud deployments  
 
### How to do this
 - Write and verify your Deployment (YAML) file
 - Use Deployment Manager to execute the deployment on your GCP account

### How to verify you've done it
 - Wait for  the GCP Deployment Manager to complete the deployment of your services
 - Review the service and log output in the console

### Other Things to Know
 - GCP Marketplace executes service configurations via deployments for open source or commercial software
 - Use GCP Marketplace Deployment Templates to quickly deploy popular software, such as WordPress (shown below)

 [![deployment](/images/deployment.png)]()


### How to learn more
 - Link to [Example Deployments](https://github.com/GoogleCloudPlatform/deploymentmanager-samples)