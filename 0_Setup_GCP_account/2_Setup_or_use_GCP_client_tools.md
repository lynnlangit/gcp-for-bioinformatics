# Use GCP client tools


### Why do this
 - Work efficiently using the best combination of GCP client tools

### What is this
 Understand, select and configure GCP client tools. There are generally two types client tools.  One type runs in web browser, so there is nothing to install locally.  The other type requires downloading, installing and configuring client tools. If you chose to download, then be sure to follow the installation instructions for your laptop OS.
 Available tools include the following:  

- **GCP Web UI (or console)** - [link to console](https://console.cloud.google.com/) -- Usage Tips:
    - ZERO INSTALL
    - Use Google chrome browser to access the GCP console
    - Use the search box within the GCP console to quickly jump within the console (shown in the screenshot below)

[   ![GCP integrated search](/images/jump.png)]()    
- **GCP cloud shell** (integrated GCP client from withing the GCP console) - shown below in animated image. Cloud Shell provides the following:
    - ZERO INSTALL, runs in GCP Web UI
    - A temporary Compute Engine virtual machine instance
    - Command-line access to the instance from a web browser
    - Built-in code editor BETA
    - 5 GB of persistent disk storage
    - Pre-installed Google Cloud SDK and other tools
    - Language support for Java, Go, Python, Node.js, PHP, Ruby and .NET
    - Web preview functionality
    - Built-in authorization for access to GCP Console projects and resources
    - 5 min codelab on using cloud shell and gcloud command - [link](https://codelabs.developers.google.com/codelabs/cloud-shell/index.html)

[   ![GCP integrated shell](/images/shellstart-update.gif)]()

- **Google Colabs** - [link to site](https://colab.research.google.com)
    - ZERO INSTALL, Jupyter-style notebooks with many samples for connecting to key GCP services (storage, BigQuery, Machine Learning and others)
    - NOTE: It is also possible to connect to GCP service with standard [Jupyter notebooks](https://jupyter.org/).  These notebooks can be run remotely (on GCP) or installed on your local machine

[    ![Google Colabs](/images/colabs.png)]() 

- **GCP cli** - part of GCP SDK (gcloud, gsutil, bq... script tools) - REQUIRES INSTALLATION - [download](https://cloud.google.com/sdk/)
- **GCP SDK** - available in many programming languages, Python, Go, Java... - REQUIRES INSTALLATION - [download](https://cloud.google.com/sdk/)


### Key considerations
 - Use the **GCP console** when you are LEARNING about GCP Services
 - Use the **integrated console (shell)** and scripts to EXPERIMENT with small analysis jobs
 - Use **scripts and source control** to create reproducible analysis jobs
 - Use **GCP SDK language integration** (Python, Java... GCP SDK) to scale your analysis for large/huge jobs. Example of using the Python client libary - [link](https://cloud.google.com/compute/docs/tutorials/python-guide)

### How to do this
 - Click in GCP console and/or use shell - no setup /install required
 - Download GCP SDK - use gcp cli and/or sdk for your language, requires installation and configuration

### How to verify you've done it
 - Login to GCP console
 - Verify your account
 - Verify that you can perform a 'hello world' task in your account.  Common examples are below:
    - View your GCP project name and ID using the console --OR-- 
    - Upload a file into a Cloud Storage bucket --OR--
    - Start a Compute Engine Virtual Machine Linux instance and connect to it using the ssh tool

### Other Things to Know
 - Access to the some or all of the GCP console can (and sometime should) be restricted
 - Reproducible research includes scripting GCP service configurations
 - Google has a large number of sample scripts and SDK code samples in their GitHub organizational Repos
 - IAM is 'Identity and Access Management' - this contains security objects, such as users, groups, roles and permissions

### How to learn more
 - Link to [Integrated Shell features](https://cloud.google.com/shell/docs/features)
 - Link to [Integrated Shell limits](https://cloud.google.com/shell/docs/limitations)
 - Link to [Scripting GCP examples](https://cloud.google.com/sdk/docs/scripting-gcloud)
 - Link to [How do I use the BASH command line?](https://www.youtube.com/watch?v=EMaFdfIlK58)