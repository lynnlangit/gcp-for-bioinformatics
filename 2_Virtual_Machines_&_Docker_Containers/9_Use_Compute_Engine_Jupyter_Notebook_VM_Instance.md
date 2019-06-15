
# Use Jupyter Notebook Instances

### Why do this
 - You want to use Jupyter notebooks and data analysis libraries for your reseach
 - You want to use libraries (such as TensorFlow) and hardware (such as GPUs) which are pre-installed and pre-configured on a VM hosted in your GCP project

### What is this
 - Set up and use analysis using libraries and Jupyter notebooks on pre-configured GCE VMs quickly
 - Running on services hosted by GCP
  - You have a number of choices - this article covers the items highlighted in RED SQUARES

[![notebook-instance](/images/notebook-instance.png)]()


### Key considerations
 - Select the core library (i.e. R, Python, etc...) for your notebook instance
 - Configure the hardware for your VM based on your expected workload - can include GPUs

### How to do this
 - Create notebook instance from AI Platform -> Notebooks
 - Select appropriate type of Notebook - see screenshot below
 - Create a notebook instance VM and wait for a green indicator - see screenshot below

 [![create-notebook](/images/create-notebook.png)]()

 [![notebook-vm](/images/notebook-vm.png)]()

### How to verify you've done it
 - Click the 'OPENJUPYTERLAB' link on the GCP AI hub -> Notebook instances interface for your VM
 - Work with notebooks on your VM (example shown below)

 [![jupyter-sample](/images/jupyter-sample.png)]()

### Other Things to Know
 - Notebook instances have libaries (such as R, Python...)  pre-installed
 - Notebook instances are part of the GCP AI Hub - [link](https://cloud.google.com/ai-hub/docs/introduction)
 - Notebook instances are an alternative to you using GCE VMs where YOU install libraries and drivers manually
 - Google Colabs are public Jupyter servers where you can try our small experiments FREE using Jupyter notebooks - [link](https://colab.research.google.com/notebooks/welcome.ipynb)

### How to learn more
 - Link to [Using Notebook Instances](https://cloud.google.com/ai-hub/docs/open-notebook)
 - Link to [Publish a Notebook on AI Hub](https://cloud.google.com/ai-hub/docs/publish-notebook)