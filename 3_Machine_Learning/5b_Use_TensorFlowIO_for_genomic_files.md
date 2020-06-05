# USE TensorFlowIO for genomic file processing

### Why do this
 - USE TensorFlow IO libaries to process genomic datasets

### What is this
 This tutorial demonstrates the `tfio.genome` package that provides commonly used genomics IO functionality
   - reading several genomics file formats 
   - providing some common operations for preparing the data 
      - one hot encoding 
      - parsing Phred quality into probabilities

   This package uses the [Google Nucleus library](https://github.com/google/nucleus) to provide some of the core functionality.

### Key considerations
 - USE `tfio.genome.read_fastq` to read input Fastq files
 - USE a helper op to convert this quality information into probabilities
   - this function `tfio.genome.phred_sequences_to_probability(fastq_data.raw_quality)`
 - ENCODE the genome sequence data (which consists of A T C G bases) using a one hot encoder
   - this function `tfio.genome.sequences_to_onehot(fastq_data.sequences)`

### How to do this
 - Run the example in Google Colabs - [link](https://www.tensorflow.org/io/tutorials/genome)

### How to verify you've done it
 - Run the example Colabs Notebook linked above

### Other Things to Know
 - none

### How to learn more
 - :orange_book: Link to notebook - [provides examples](https://colab.research.google.com/github/tensorflow/io/blob/master/docs/tutorials/genome.ipynb) 
 - 📘 Link to paper - ['Scaling computational genomics to millions of individuals with GPUs'](https://www.biorxiv.org/content/10.1101/470138v3)
 