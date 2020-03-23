# Use GCP client tools


### Objective
 Work efficiently using the best combination of GCP client tools when using GCP cloud services

### Our Goal
 To understand, select and configure GCP client tools to setup. 
 
### Intro

 TODO:Possibly reword 
 
 GCP Client tools are tools provided by Google Cloud Platform to enable you control and manage your resources. GCP tools provide functionality from management to analytics to ...? TODO: complete this
More informatin on GCP tools can be found here TODO: add link here
For the purposes of thie bioinformatics learning session we will be focusing on GCP Cloud COmpute platform tool provided by google
    

 There are broadly three kinds of management tools to manage GCP resources.  
    - Cloud Console
    - CLoud shell
    - Cloud SDK

1. **Cloud Console (Web UI)** - [learn more](https://cloud.google.com/cloud-console) 

the GCP console is the management console you see as soon as you log into GCP cloud navigate to your project folder. You should firstly see a dashboard containing summary inforamtion on your availible resources. This dashboard could be customized to ...TODO: see and enter here more information on dashboard features.

  
example screen shown below
    - Usage Tips:
        - ZERO INSTALL
        - Use Google chrome browser to access the GCP console
        - Use the search box within the GCP console to quickly jump within the console (shown in the screen below with 'iam')

   [   ![GCP integrated search](/images/jump.png)]() 

2. **Cloud Shell** [learn more](https://cloud.google.com/shell) 

This is integrated GCP client from withing the GCP console) - shown below in animated image.  
GCP Shell could be accessed   

Cloud Shell provides the following perks:
    - ZERO INSTALL, runs in GCP Web UI
    - Allows for command-line access to the instance from a web browser
    - Uses a temporary Compute Engine virtual machine instance
    - Includes a number of features:
        - a built-in code editor BETA
        - 5 GB of persistent disk storage
        - pre-installed Google Cloud SDK and other tools
        - language support for Java, Go, Python, Node.js, PHP, Ruby and .NET
        - web preview functionality
        - built-in authorization for access to GCP Console projects and resources
    
    You could Do a 5-min codelab on using cloud shell & gcloud command - [link](https://codelabs.developers.google.com/codelabs/cloud-shell/index.html)

[   ![GCP integrated shell](/images/shellstart-update.gif)]()

3.  **Cloud CLI and SDK** 

    The google cloud cli is part of the google cloud SDK. It's mandated you install and initialize the SDK on your system before you can use the cloud command-line tool [more information here](https://cloud.google.com/sdk). It comes witht the standard cli installation packages and additional functionalities have to be added and configured as needed. 



### Practice

The good thing about google cloud platform tools is how easy it is to learn by doing if that's your thing. Google Colabs is an amazing resource to play around with gcp tools. It comes preconfigured and you can try out different excercises and see

**Google Colabs** - [link to site](https://colab.research.google.com) 
Google colabs are a bunch of tutorials and practice examples that use Jupyter-style notebooks to provide very helpful walk-throughs that help you practice using their platform services

Jupyter notebooks are more or less colaborative shared documents that provide great visuals to enable you run code live examples and see live results without any installations or preconfiguration. 

Colabs use them in a creative way to provide users a platform to see their tools at work.
there are several excercises available to showcase the services provided by google cloud such as 
Storege, BigQuery, Machine Learning and others. [More here](https://colab.research.google.com) 
    
    - NOTE: It is also possible to connect to GCP service with standard [Jupyter notebooks](https://jupyter.org/).  These notebooks can be run remotely (on GCP) or installed on your local machine

[    ![Google Colabs](/images/colabs.png)]() 


### Recommendations
 - Use the **GCP console** when you are LEARNING about GCP Services
 - Use the **integrated console (shell)** and scripts to EXPERIMENT with small analysis jobs
 - Use **scripts and source control** to create reproducible analysis jobs
 - Use **GCP SDK language integration** (Python, Java... GCP SDK) to scale your analysis for large/huge jobs. Example of using the Python client libary - [link](https://cloud.google.com/compute/docs/tutorials/python-guide)

 ### 📺 Click below to see Lynn's 'Use GCP client tools' 6 min video
[![GCP client tools - Google Cloud Platform for Bioinformatics](http://img.youtube.com/vi/ce1XZ68NdA8/0.jpg)](http://www.youtube.com/watch?v=ce1XZ68NdA8 "GCP client tools - Google Cloud Platform for Bioinformatics")

### Task
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
 - 📺 Link to [How do I use the BASH command line?](https://www.youtube.com/watch?v=EMaFdfIlK58)