
# Use Jupyter Notebook Instances

### Why do this
 - You want to use Jupyter notebooks and data analysis libraries for your reseach
 - You want to use libraries (such as TensorFlow) and hardware (such as GPUs) which are pre-installed and pre-configured on a Compute Engine VM hosted in your GCP project

### What is this
 - Set up and use analysis using libraries and Jupyter notebooks on pre-configured Compute Engine VMs quickly

### Key considerations
 - Select the core library (i.e. R, Python, etc...) for your notebook instance
 - Configure the hardware for your VM based on your expected workload - can include GPUs

### How to do this
 - Create notebook instance from AI Platform -> Notebooks
 - Select appropriate type of Notebook - see screenshot below
 - Create a notebook instance VM and wait for a green indicator - see screenshot below

 [![create-notebook](/images/create-notebook.png)]()

 [![notebook-vm](/images/notebook-vm.png)]()

 -----

 ### 📺Click to see Lynn's 4 minute exploration of this section  
[![GCP Jupyter Notebook Instances for Bioinformatics](http://img.youtube.com/vi/tboCODz0IL4/0.jpg)](http://www.youtube.com/watch?v=tboCODz0IL4 "GCP Jupyter Notebook Instances for Bioinformatics")

### How to verify you've done it
 - Click the **'OPENJUPYTERLAB'** link on the GCP AI hub -> Notebook instances interface for your VM
 - Work with notebooks on your VM (example shown below)

 [![jupyter-sample](/images/jupyter-sample.png)]()

### Other Things to Know
 - Notebook instances have libaries (such as R, Python...)  pre-installed
 - Notebook instances are part of the GCP AI Hub - [link](https://cloud.google.com/ai-hub/docs/introduction)
 - Notebook instances are an alternative to you using Compute Engine VMs where YOU manually install libraries and drivers 
 - Google Colabs are public Jupyter servers where you can try our small experiments FREE using Jupyter notebooks - [link](https://colab.research.google.com/notebooks/welcome.ipynb)

### How to learn more
 - 📘Link to [Using Notebook Instances](https://cloud.google.com/ai-hub/docs/open-notebook)
 - 📘Link to [Publish a Notebook on AI Hub](https://cloud.google.com/ai-hub/docs/publish-notebook)
 - 📙Try out some of these bioinformatics tools using [example Jupyter notebooks](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/2_Virtual_Machines_%26_Docker_Containers/Jupyter_Notebook_Examples)

