# USE Nucleus & TF for DNA sequencing error correction

### Why do this
 - USE Nucleus & TensorFlow for efficient DNA sequencing error correction

### What is this
 Use Nucleus and TensorFlow for DNA sequencing error correction. The referenced tutorial is a Python notebook that demonstrates the power of Nucleus at integrating information from multiple file types (BAM, VCF and Fasta) and turning it into a form usable by TensorFlow.

   This package uses the [Google Nucleus library](https://github.com/google/nucleus) to provide some of the core functionality.

### Key considerations
Nucleus is a library developed for processing genomics data by the Genomics team in Google Brain. Nucleus makes it easy to read, write, and analyze data in common genomics file formats like BAM, FASTA, and VCF using specialized reader and writer objects. Nucleus allows us to:

- Query a VCF file for all variants in a given genomic region
- Query a BAM file for all reads mapping to a given genomic range
- Query a FASTA file for the reference sequence starting at a given position

Nucleus is used to write data out to TFRecords, a binary file format that consists of protocol buffer messages and can be easily read by TensorFlow. After reading in the TFRecords, TensorFlow Keras API is used to train and evaluate a convolutional neural network.  The key steps are shown below.

![Nucleus and TF for DNA sequencing error correction](/images/nucleus.png)

### How to do this
 - Run the example in Google Colabs - [link](https://colab.research.google.com/github/google/nucleus/blob/master/nucleus/examples/dna_sequencing_error_correction.ipynb)

### How to verify you've done it
 - Run the example Colabs Notebook linked above

### Other Things to Know
 - none

### How to learn more
- 📘 Link examples - ['Examples'](https://github.com/google/nucleus/blob/master/docs/examples.md)
 