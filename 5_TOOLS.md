# Genomic Tools

This page lists some common genomics tools used in bioinformatics analysis pipelines.  

## Tools Summary Table

|Name |Functionality                            |Phase                 |Notes                              |Maintainers                                                                                                                     |
|-----|---------------------------------|----------------------|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|[GATK](https://software.broadinstitute.org/gatk/)| comprehensive set of analysis tools                | all   | example pipelines on Terra.bio | The Broad Institute |                                                                  |
|[HAIL](https://hail.is/)| analysis        | end    | runs on Spark for scalability | The Broad Institute   |
|[IGV](http://www.broadinstitute.org/igv/)| visualization      | all    | can embed in Jupyter notebooks | The Broad Institute   |
|[Variant Transforms](https://github.com/googlegenomics/gcp-variant-transforms)| transform and load vcf files into BigQuery    | end    | can embed in Jupyter notebooks | Google Cloud   |
|[VariantSpark](https://bioinformatics.csiro.au/variantspark/)| variant discovery  | end    | binary format                     | CSIRO Bioinformatics |
|[GT-Scan](https://bioinformatics.csiro.au/gt-scan/)| variant analysis    | end  | none                  | CSIRO Bioinformatics |


### Learn More -> Links
 - 📘IGV (Integrative Genomics Viewer) tool - [link](http://software.broadinstitute.org/software/igv/) from The Broad
  - :octocat: Learning how to work with VCF (Variant Call Format) files 
 [link](https://github.com/davetang/learning_vcf_file)
 - 📘General reference 'How sequencing works' - [link](https://learn.gencore.bio.nyu.edu/ngs-file-formats/how-sequencing-works/)
 - 📘GATK tools (from The Broad) to convert genomic files - [link](https://support.terra.bio/hc/en-us/articles/360029577711-Converting-common-genomics-file-formats-) - from/to common formats (i.e. paired FASTQ to unmapped BAM, etc...)
 - 📘How to generate a BAM - [link](https://gatkforums.broadinstitute.org/gatk/discussion/5969/how-to-generate-a-bam-for-variant-discovery-long) & image below from The Broad

 ![Generate-BAM](/images/generate-BAM.png)


 ### Image References
 - FASTA/FASTQ images from [link](https://www.researchgate.net/publication/309134977_A_Survey_on_Data_Compression_Methods_for_Biological_Sequences)
 - BAM w/IGV from [link](https://gatkforums.broadinstitute.org/gatk/discussion/6491/howto-visualize-an-alignment-with-igv)
 - VCF image from [link](https://www.researchgate.net/figure/shows-an-example-VCF-file-For-more-details-about-VCF-files-refer-to-the-specification_fig6_316063749)
 - VCF alterate image from [link](http://vcftools.sourceforge.net/VCF-poster.pdf) 
 - GVCF vs. VCF comparison from [link](https://gatkforums.broadinstitute.org/gatk/discussion/4017/what-is-a-gvcf-and-how-is-it-different-from-a-regular-vcf)






