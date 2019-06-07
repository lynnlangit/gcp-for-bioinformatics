# Setup or Use GCP client tools


### Why do this
 - Work efficiently using the best combination of GCP client tools

### What is this
 Understand, select and configure GCP client tools. Available tools include the following:  

- **GCP Web UI (or console)** - [link to console](https://console.cloud.google.com/) -- Usage Tips:

    - Use Google chrome browser to access the GCP console
    - Use the search box within the GCP console to quickly jump within the console (shown in the screenshot below)

[   ![GCP integrated search](/images/jump.png)]()    
- **GCP cloud shell** (integrated GCP client from withing the GCP console) - shown below in animated image. Cloud Shell provides the following:

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


- GCP cli - part of GCP SDK (gcloud, gsutil, bq... script tools) - [download](https://cloud.google.com/sdk/)
- GCP SDK - available in many programming languages, Python, Go, Java... - [download](https://cloud.google.com/sdk/)



### Key considerations
 - Learn about GCP services by using the GCP console
 - Experiment via integrated console and scripts
 - Reproduce analysis using scripts 
 - Scale and optimize analysis using SDK language integration (Python, Java... GCP SDK)

### How to do this
 - Click in GCP console and/or use shell - no setup /install required
 - Download GCP SDK - use gcp cli and/or sdk for your language, requires installation and configuration

### How to verify you've done it
 - Login to GCP console
 - Verify your account
 - Verify a 'hello world' service - usually put a file in a bucket

### Other Things to Know
 - Access to the some or all of the GCP console can (and sometime should) be restricted
 - Reproducible research includes scripting GCP service configurations
 - Google has a large number of sample scripts and SDK code samples in their GitHub organizational Repos
 - IAM is 'Identity and Access Management' - this contains security objects, such as users, groups, roles and permissions

### How to learn more
 - Link to [Integrated Shell features](https://cloud.google.com/shell/docs/features)
 - Link to [Integrated Shell limits](https://cloud.google.com/shell/docs/limitations)