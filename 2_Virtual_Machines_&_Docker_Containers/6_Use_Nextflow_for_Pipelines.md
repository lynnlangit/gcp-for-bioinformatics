# Use Nextflow for Pipelines


### Why do this
 You want to use the Nextflow pipeline language to define and run your analysis workflow

### What is this
 - Nextflow is a reactive workflow framework and a programming DSL that eases the writing of data-intensive computational pipelines. It is designed around the idea that the Linux platform is the lingua franca of data science. Linux provides many simple but powerful command-line and scripting tools that, when chained together, facilitate complex data manipulations. 
 
    Nextflow extends this approach, adding the ability to define complex program interactions and a high-level parallel computational environment based on the dataflow programming model.
 - Nextflow can run on GCP or other environments
 - You have a number of choices to create and run workflows - this article covers the items highlighted in RED SQUARES

[![nextflow](/images/nextflow.png)]()

### Key considerations
- Understand the Nextflow features - [link](https://www.nextflow.io/index.html#Features)

### How to do this
 - Run 1-minute QuickStart - [link](https://www.nextflow.io/index.html#Features)
 - Run blast example - [link](https://www.nextflow.io/example3.html)
 - Run RNASeq example - [link](https://www.nextflow.io/example4.html)
 - Run VariantCalling pipeline w/GATK - [link](https://github.com/CRG-CNAG/CalliNGS-NF/)

### How to verify you've done it
 - Use the examples above

### Other Things to Know
 - Use Nextflow w/GCE or Nextflow w/container images & Google Genomics/Pipelines API
 - Test Netflow pipelines locally
 - Use Nextflow pipelines with other cloud vendors: AWS - [link](https://www.nextflow.io/docs/latest/awscloud.html)
 - The Nextflow scripting language is an extension of the Groovy programming language. Groovy is a programming language for the Java virtual machine. The Nextflow syntax has been specialized to ease the writing of computational pipelines in a declarative manner. 

### How to learn more
 - Link to [Nextflow on GCP](https://www.nextflow.io/docs/latest/google.html)
 - Watch Nextflow presentations - [link](https://www.nextflow.io/presentations.html)