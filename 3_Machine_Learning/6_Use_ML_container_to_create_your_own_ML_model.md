# Use a GCE ML Deep Learning Container

### Why do this
 - CREATE and run your own machine learning model(s) at scale
 - WORK with GPUs and/or TPUs for TensorFlow without having to install drivers
 - USE machine learning containers

### What is this
 - Ability to quickly spin up a container on GCP with machine learning libraries pre-installed
 - As above, with drivers for GPUs and/or TPUs pre-installed

### Key considerations
 - What type of machine learning is included in your analysis?
 - Which ML libraries do you need - there are a number of different GCP Deep Learning OS images available
 - Which configuration (size/capacity) do you need?  Current list of possible container configurations is shown below

 [![ml-containers](/images/ml-containers.png)]()

### How to do this
 - Pull the container - either locally or onto a GCP service
 - If locally, start the container
 - If on GCP, use a GCE 'container-optimized VM' or GKE to pull and start the container.
 - Use a command such as this to start the container (be sure to use the name of the container you are using, i.e. 'deeplearning-platform-release/tf-cpu.1-13' in the example below)   
      `docker run -d -p 8080:8080 -v /path/to/local/dir:/home gcr.io/deeplearning-platform-release/tf-cpu.1-13`

### How to verify you've done it
 - Access the container directly --or-- 
 - Access the ML libary via the associated Jupyter notebook, i.e. 'http://localhost:8080'

### Other Things to Know
 - GPUs/TPUs are often added for TensorFlow ML analysis jobs, such as DeepVariant
 - You use these containers as base images, then add your libraries and host on the GCP AI Hub or any other public container registry


### How to learn more
 - 📘 Link to [Use a Deep Learning Container](https://cloud.google.com/blog/products/ai-machine-learning/introducing-deep-learning-containers-consistent-and-portable-environments)
 - 📘 Create & deploy a custom ML model using CloudML engine - [link](https://cloud.google.com/blog/products/gcp/genomic-ancestry-inference-with-deep-learning)
 - 📘 Link to [Use the 'What-if' Tool to help you understand custom Tensor Flow models](https://cloud.google.com/blog/products/ai-machine-learning/introducing-the-what-if-tool-for-cloud-ai-platform-models)
