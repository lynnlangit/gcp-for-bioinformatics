# Deploy IGV on GCP

Guidance

## What is IGV?

The `Integrated Genome Viewer`(or `IGV`) is an open source visualization tool developed by the team at The Broad Institute at MIT and Harvard and UC San Diego.  Main link is at https://igv.org/

## Main Repos

There are several versions, JS (for embedding in a web app), NB (for embedding in a IPython notebook), Reports (for generating reports). 
- https://github.com/igvteam/igv.js - igv.js is an embeddable interactive genome visualization component developed by the Integrative Genomics Viewer (IGV) team.
- https://github.com/igvteam/igv-notebook - igv-notebook is a Python package which wraps igv.js for embedding in an IPython notebook. Both Jupyter and Google Colab platforms are supported.
- https://github.com/jupyter-widgets-contrib/ipyigv - A Jupyter wrapper for the igv.js library
- https://github.com/igvteam/igv-reports - A Python application to generate self-contained HTML reports for variant review and other genomic applications

## How to use on GCP

Use Vertex AI Notebook Instance.  

### Step-by-Step Guide to Set Up IGV in GCP Vertex AI Jupyter Notebook
- Step 1: Set Up a Vertex AI Jupyter Notebook Instance
    - Log into Google Cloud Console.
    - Navigate to Vertex AI > Workbench.
    - Create a new Jupyter Notebook instance. Choose an appropriate machine type and environment that suits your needs.
- Step 2: Access the Jupyter Notebook Instance
    - Once the instance is ready, open JupyterLab.
- Step 3: Use the supplied notebook
    - Open the supplied notebook
- Step 4: Test the IGV Browser
    - Run the cell containing the `IGV.js` script.
    - The IGV browser should render within the notebook. Test its functionality by navigating the genome, zooming in/out, and loading different tracks.
- Step 5: Save and Share Your Notebook
    - Save your notebook for future use or sharing.

#### Additional Considerations:
- Google Cloud Storage Permissions: Ensure that the service account or permissions associated with your Vertex AI Notebook instance has access to the Google Cloud Storage buckets.
- IGV.js Configuration: The configuration of IGV.js can be complex depending on your specific requirements. Refer to the IGV.js documentation for advanced configurations.
- Data Privacy: Be cautious with sensitive data and understand the implications of making your genomic data publicly accessible if you choose to do so.


