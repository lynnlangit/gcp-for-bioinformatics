
# Use Jupyter Notebook Instances

### Why do this
 - Use [Jupyter notebooks](https://jupyter.org/) with data analysis script and libraries for interactive reseach
 - Use libraries (such as TensorFlow) and hardware (such as GPUs) which are pre-installed and pre-configured on a Compute Engine VM hosted in your GCP project

### What is this
 - Set up and use analysis using libraries and Jupyter notebooks on pre-configured Compute Engine VMs quickly
 - View an example Jupyter Notebook which uses GATK for an analysis - [link](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples/GATK_IGV_Tutorial.ipynb)

### Key considerations
 - SELECT the core library (i.e. R, Python, etc...) for your notebook instance
 - CONFIGURE the hardware for your VM based on your expected workload - can include GPUs
 - SELECT the mode of working with your notebook.  Notebooks can be...
    - VIEW-only - this can include the results of running each code cell or not (used when publishing results of analysis). This requires a rendering environment, GitHub can render most notebooks (view only), also [NBViewer](https://nbviewer.jupyter.org/) and others.
    - RUNNABLE - this mode requires an execution environment, in GCP this is a VM (GCE) with the Jupyter libraries AND any language runtime libraries (i.e. R, Python...).  NOTE: For quick prototyping, you can use [Google Colabs](https://colab.research.google.com/) to execute Jupyter noteboks without setting up GCE VMs.  However, the free version of Colabs includes significant CPU/RAM etc. caps.

### How to do this
 - CREATE notebook instance from AI Platform -> Notebooks
 - SELECT appropriate type of Notebook - see screenshot below
 - CREATE a notebook instance VM and wait for a green indicator - see screenshot below

 [![create-notebook](/images/create-notebook.png)]()

 [![notebook-vm](/images/notebook-vm.png)]()

 -----

 ### 📺 Click to see Lynn's 4 minute exploration of this section  
[![GCP Jupyter Notebook Instances for Bioinformatics](http://img.youtube.com/vi/tboCODz0IL4/0.jpg)](http://www.youtube.com/watch?v=tboCODz0IL4 "GCP Jupyter Notebook Instances for Bioinformatics")

### How to verify you've done it
 - CLICK the **'OPENJUPYTERLAB'** link on the GCP AI hub -> Notebook instances interface for your VM
 - WORK with notebooks on your VM (example shown below)

 [![jupyter-sample](/images/jupyter-sample.png)]()

### Other Things to Know
 - Notebook instances have libaries (such as R, Python...)  pre-installed
 - Notebook instances are part of the GCP AI Hub - [link](https://cloud.google.com/ai-hub/docs/introduction)
 - Notebook instances are an alternative to you using Compute Engine VMs where YOU manually install libraries and drivers 
 - Google Colabs are public Jupyter servers where you can try our small experiments FREE using Jupyter notebooks - [link](https://colab.research.google.com/notebooks/welcome.ipynb)

### How to learn more
 - 📘 Link to [Using Notebook Instances](https://cloud.google.com/ai-hub/docs/open-notebook)
 - 📘 Link to [Publish a Notebook on AI Hub](https://cloud.google.com/ai-hub/docs/publish-notebook)
 - 📙 Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)

