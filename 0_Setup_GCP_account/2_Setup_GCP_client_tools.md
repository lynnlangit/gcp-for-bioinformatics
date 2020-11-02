# Use GCP client tools


### Why do this
 Work efficiently using the best combination of GCP client tools when using GCP cloud services

### What is this
 Understand, select and configure GCP client tools. There are broadly two types of client tools.  
 
 One type runs in web browser, so there is nothing to install locally. The second type requires downloading, installing and configuring client tools. If you chose to download a client tool, then be sure to follow the installation instructions for your particular type of laptop OS.  

 Available GCP client tools include the following:   

1. **GCP Web UI (or console)** - [link to console](https://console.cloud.google.com/) example screen shown below
    - Usage Tips:
        - ZERO INSTALL
        - Use Google chrome browser to access the GCP console
        - Use the search box within the GCP console to quickly jump within the console (shown in the screen below with 'iam')

[   ![GCP integrated search](/images/jump.png)]()    

---

2. **GCP cloud shell** (integrated GCP client from withing the GCP console) - shown below in animated image.   
Cloud Shell provides the following:
    - ZERO INSTALL, runs in GCP Web UI
    - Uses a temporary Compute Engine virtual machine instance
    - Allows for command-line access to the instance from a web browser
    - Includes a number of features:
        - a built-in code editor BETA
        - 5 GB of persistent disk storage
        - pre-installed Google Cloud SDK and other tools
        - language support for Java, Go, Python, Node.js, PHP, Ruby and .NET
        - web preview functionality
        - built-in authorization for access to GCP Console projects and resources
    - Do a 5-min codelab on using cloud shell & gcloud command - [link](https://codelabs.developers.google.com/codelabs/cloud-shell/index.html)

[   ![GCP integrated shell](/images/shellstart-update.gif)]()

NOTE: As an alternative to using the GCP integrated cloud shell, you could use a locally-installed GCP client.  To do this you  download and configure the GCP SDK(https://cloud.google.com/sdk/). Then you can use `gcloud` commands from your local laptop to start, control or stop GCP service instances.  An example, which would start three GCE (Google Compute Engine) virtual machines is shown below. For a complete list of command parameters, see [link](https://cloud.google.com/sdk/gcloud/reference/compute/instances/create)

`gcloud compute instances create example-instance-1 example-instance-2 example-instance-3 --zone=us-central1-a` 

**NEW** - Google Cloud Shell editor

Google Cloud recently previewed a new version of their Cloud Shell Editor, immediately available in preview on ide.cloud.google.com and powered by the Eclipse Theia IDE platform. This new version extends Cloud Shell with an online development environment that includes:

- Cloud-native development via Cloud Code plugin support
- Rich language support for Go, Java, .Net, Python and NodeJS 
- Additional features such as integrated source control and support for multiple projects

---

 <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/raw/master/images/colabs.png" width="460" align="right"> 

3.  **Google Colabs** - [link to site](https://colab.research.google.com) example shown to the right:
This service is also called GCP Colaboratory.  Colabs was originally a project at Google Research.  
    - Colabs features ZERO INSTALL, Jupyter-style notebooks 
        - Notebooks can be run for FREE on GCP Cloud Infrastructure 
        - resources (CPUs, Memory, etc...) are constrained by GCP 
    - Colabs includes many samples for connecting to key GCP services such as these:
        - GCS storage, BigQuery, Machine Learning w/TensorFlow and other services)  
        - you can add GPU or TPU (specialized processors) to your Jupyter notebook computation  
    - NOTE: It is also possible to connect to GCP service with standard [Jupyter notebooks](https://jupyter.org/).    
    - These notebooks can be run remotely (on GCP) or downloaded and run on your local machine w/Jupyter installed

---

### Key considerations
 - Use the **GCP console** when you are LEARNING about GCP Services
 - Use the **integrated console (shell)** and scripts to EXPERIMENT with small analysis jobs
 - Use **scripts and source control** to create reproducible analysis jobs
 - Use **GCP SDK language integration** (Python, Java... GCP SDK) to scale your analysis for large/huge jobs. Example of using the Python client libary - [link](https://cloud.google.com/compute/docs/tutorials/python-guide)

### How to do this
 - CLICK in GCP console and/or use shell - no setup /install required
 - DOWNLOAD GCP SDK - use gcp cli and/or sdk for your language, requires installation and configuration

 ### 📺 Click below to see Lynn's 'Use GCP client tools' 6 min video
[![GCP client tools - Google Cloud Platform for Bioinformatics](http://img.youtube.com/vi/ce1XZ68NdA8/0.jpg)](http://www.youtube.com/watch?v=ce1XZ68NdA8 "GCP client tools - Google Cloud Platform for Bioinformatics")

### How to verify you've done it
 - LOGIN  to GCP console
 - VERIFY your account
 - VERIFY that you can perform a 'hello world' task in your account.  Common examples are below:
    - View your GCP project name & ID using the console --OR-- 
    - Upload a file into a Cloud Storage bucket --OR--
    - Start a Compute Engine Virtual Machine Linux instance and connect to it using the ssh tool

### Other Things to Know
 - Access to the some or all of the GCP console can (and sometime should) be restricted by user permission level
 - Reproducible research includes **scripting** GCP service configurations
 - Google has a large number of sample scripts & SDK code samples in their GitHub organizational Repos - [link](https://github.com/GoogleCloudPlatform)
 - IAM (Identity and Access Management) - IAM services include security objects, such as users, groups, roles and permissions

### How to learn more
 - 📘 Link to [Integrated Shell features](https://cloud.google.com/shell/docs/features)
 - 📘 Link to [Integrated Shell limits](https://cloud.google.com/shell/docs/limitations)
 - 📘 Link to [Scripting GCP examples](https://cloud.google.com/sdk/docs/scripting-gcloud)
 - 📘 Link to [7 gcloud tips](https://medium.com/google-cloud/7-gcloud-tricks-you-probably-didnt-know-7f64a16869e7)
 - 📺 Link to [How do I use the BASH command line?](https://www.youtube.com/watch?v=EMaFdfIlK58)
