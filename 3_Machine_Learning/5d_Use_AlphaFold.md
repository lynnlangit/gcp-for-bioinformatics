# USE AlphaFold for Protein Folding Prediction

### Why do this
 - USE AlphaFold and GCP Vertex AI for efficient protein folding prediction. Once a protein’s structure is determined and its role within the cell is understood, scientists can develop drugs that can modulate the protein function based on its role in the cell

### What is this
 - AlphaFold is a machine learning model (uses TensorFlow) created by Google DeepMind. Here's a 7 minute video on AlphaFold concepts, including running it on GCP Vertex AI - [link](https://www.youtube.com/watch?v=CX0BTkimL7A)

### Key considerations

You can run AlphaFold using example notebooks (small-sized test) or via a scalable cloud-based machine learning pipeline.
- SMALL: 
  - Use **Colabs** [very small example notebook - here](https://colab.research.google.com/github/sokrypton/ColabFold/blob/main/AlphaFold2.ipynb). Runs in 5 minutes on default Colab env.
  - Use **Colabs** [small sample notebook - here](https://colab.research.google.com/github/deepmind/alphafold/blob/main/notebooks/AlphaFold.ipynb). Runs in ~ 30 minutes. Example notebook output shown below. --or-- 
  - Use Vertex AI Notebook to test [example notebook - here](https://github.com/GoogleCloudPlatform/vertex-ai-samples/blob/main/community-content/alphafold_on_workbench/AlphaFold.ipynb). 
- SCALABLE/ LARGE: 
  - Use Vertex AI (batch) Pipeline to scale - [link](https://cloud.google.com/blog/products/ai-machine-learning/alphafold-batch-inference-with-vertex-ai-pipelines)
  - Vertex AI AlphaFold Pipeline on Github - [link](https://github.com/GoogleCloudPlatform/vertex-ai-alphafold-inference-pipeline)

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/alphafold.png" width=800>

### How to do this
 - Run the example notebook linked below in Google Colabs 
   - AlphaFold BigQuery public dataset → https://goo.gle/3Em79pd
   - AlphaFold notebook on Vertex AI Workbench → https://goo.gle/3ryXbcp
   - AlphaFold batch inferencing solution on Vertex AI Pipelines → https://goo.gle/3V7OJhI
   - Deepmind Youtube channel → https://goo.gle/3EeHr66

### How to verify you've done it
 - Run the example Colabs Notebook linked above

### Other Things to Know
 - BigQuery AlphFold public database (214M AlphaFold protein structure predictions from DeepMind) at [link](https://console.cloud.google.com/marketplace/product/bigquery-public-data/deepmind-alphafold)

### How to learn more
- 📘 FAQ for AlphaFold - [link](https://alphafold.ebi.ac.uk/faq)
- 📰 From Nature: "Highly Accurate Protein Structure Prediction w/AlphaFold" - [link](https://www.nature.com/articles/s41586-021-03819-2)
- :octocat: AlphaFold source code on Github - [link](https://github.com/deepmind/alphafold)
 
