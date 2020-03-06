# Genomic File Types

This page lists types of files used in genomic analysis.  To work with actual (sub-sampled size) example genomic files of the types listed below go to this [link](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/1_Files_%26_Data/genomic-data-samples)

## Summary Table

|Type |Name                             |Phase                 |Notes                              |Example File Image                                                                                                                     |
|-----|---------------------------------|----------------------|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|[FASTA](https://software.broadinstitute.org/gatk/documentation/article?id=11013)| sequencer file                  | 1a-from sequencer     | includes dictionary & index (.fai) files | ![FASTA](/images/fasta.png)                                                                   |
|[FASTQ](https://support.illumina.com/bulletins/2016/04/fastq-files-explained.html)| sequencer file w/quality        | 1b-from sequencer     | includes base quality PHRED score | ![FASTQ](/images/fastq.png)                                                                  |
|[UBAM](https://gatkforums.broadinstitute.org/gatk/discussion/5990/what-is-ubam-and-why-is-it-better-than-fastq-for-storing-unmapped-sequence-data)| unmapped binary alignment file  | 1c-from sequencer (processed)     | binary format                     | No Image
|[SAM](https://software.broadinstitute.org/gatk/documentation/article?id=11014  )  | sequence alignment file         | 2a-align to reference | text format                       | ![SAM-format](/images/sam-format.png)  ![SAM](/images/sam.png)                                                                |
|[BAM](https://software.broadinstitute.org/gatk/documentation/article?id=11014   )  | binary alignment file          | 2b-align to reference | binary format, being read with IGV viewer, can include index (.bai) files                     | ![BAM](/images/viz-bam.png)                                                                   |
|[CRAM](https://software.broadinstitute.org/gatk/documentation/article?id=11014   ) | compressed binary alignment file| 2c-align to reference | binary format                     | no image                                                               |
|[VCF](https://software.broadinstitute.org/gatk/documentation/article?id=11005   )  | variant call format             | 3a-find variants      | plain text                        | ![VCF](/images/vcf-file.png ) ![VCF-format](/images/vcf.png)                                                                  |
|[GVCF](https://software.broadinstitute.org/gatk/documentation/article?id=11004    ) | genomic variant call format     | 3b-find variants      |contains extra info                | ![GVCF](/images/gvcf.png)                                                                   |
|[Other text files - TSV, CSV, BED, BZ2 (compressed text)](https://github.com/lynnlangit/gcp-for-bioinformatics/tree/master/1_Files_%26_Data/genomic-data-samples/    ) | text files for genomics     | 4-any phase      |contains extra info                | no image                                                                   |

### Learn More -> Links
 - 📘Big List of genomic file types and descriptions - [link](http://software.broadinstitute.org/software/igv/?q=book/export/html/16) from The Broad
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






