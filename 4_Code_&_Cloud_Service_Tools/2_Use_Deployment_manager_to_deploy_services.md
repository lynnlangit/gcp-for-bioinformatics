# Use Deployment Manager 

### Why do this
 - SCRIPT the service configuration of your research job(s) 
 - REPRODUCE your analysis on another GCP environment (or other public cloud)

### What is this
 - A GCP Deployment is a YAML file which describe a set of GCP services and their configuration properties using files

   - You can use a deployment to execute the service configuration in a GCP configuration (YAML file)  

      - A deployment configuration file must contain a `resources: section` followed by the list of resources to create. Each resource must contain three components:

         - **name** - A user-defined string to identify this resource such as my-vm, project-data-disk, the-test-network

         - **type** - The type of the resource being deployed such as compute.v1.instance, compute.v1.disk

         - **properties** - The parameters for this resource type. They must match the properties for the type such as zone: asia-east1-a, boot: true

   - A configuration can contain **templates**, which are parts of the configuration file that have been abstracted into individual building blocks. 
      - Templates are written in either Python or Jinja2
      - Templates can be nested

      - The Deployment Manager system will interpret each template recursively & inline the results within the configuration file 

   - When you execute a deployment, each execution produces a manifest file. A manifest provides three views of a deployment:
      - Initial configuration
      - Fully-evaluated configuration after all templates and imports have been expanded
      - Layout of the deployment, which describes all the resources for the deployment in a hierarchical structure.
 
The relationship between GCP deployment file types is shown in the diagram below
  [![deployment-gcp](/images/deployment-gcp.png)]()
  
-----

### Key considerations
 - Use GCP Deployments to package GCP service for re-deployment on other GCP accounts
  - Use [Terraform templates](https://www.terraform.io/docs/providers/template/d/file.html) rather than GCP Deployments for cross-cloud deployments (i.e. AWS, Alibaba...) 
 
### How to do this
 - WRITE & verify your Deployment (YAML) file
 - USE Deployment Manager to execute the deployment on your GCP account

### How to verify you've done it
 - WAIT for the GCP Deployment Manager to complete the deployment of your services
 - REVIEW the service and log output in the console

### Other Things to Know
 - GCP Marketplace executes service configurations via deployments for open source or commercial software
 - Use GCP Marketplace Deployment Templates to quickly deploy popular software, such as WordPress (shown below)

 [![deployment](/images/deployment.png)]()


### How to learn more
 - :octocat: Link to [Example Deployments](https://github.com/GoogleCloudPlatform/deploymentmanager-samples)
 - :octocat: Link to [cromwell deployment for GCP](https://github.com/hall-lab/cromwell-deployment) - includes scripts to deploy cromwell server & database