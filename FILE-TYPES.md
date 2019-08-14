# Genomic File Types

This page lists types of files used in genomic analysis.  

## Summary Table

|Type |Name                             |Phase                 |Notes                              |Link to example file                                                                                                                       |
|-----|---------------------------------|----------------------|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|FASTA| sequencer file                  | 1-from sequencer     | includes dictionary & index files | https://software.broadinstitute.org/gatk/documentation/article?id=11013                                                                   |
|FASTQ| sequencer file w/quality        | 1-from sequencer     | includes base quality PHRED score | https://support.illumina.com/bulletins/2016/04/fastq-files-explained.html                                                                  |
|UBAM | unmapped binary alignment file  | 1-from sequencer (processed)     | binary format                     | https://gatkforums.broadinstitute.org/gatk/discussion/5990/what-is-ubam-and-why-is-it-better-than-fastq-for-storing-unmapped-sequence-data|
|SAM  | sequence alignment file         | 2-align to reference | text format                       | https://software.broadinstitute.org/gatk/documentation/article?id=11014                                                                   |
|BAM  | binary alignment file           | 2-align to reference | binary format                     | https://software.broadinstitute.org/gatk/documentation/article?id=11014                                                                    |
|CRAM | compressed binary alignment file| 2-align to reference | binary format                     | https://software.broadinstitute.org/gatk/documentation/article?id=11014                                                                   |
|VCF  | variant call format             | 3-find variants      | plain text                        | https://software.broadinstitute.org/gatk/documentation/article?id=11005                                                                   |
|GVCF | genomic variant call format     | 3-find variants      |contains extra info                | https://software.broadinstitute.org/gatk/documentation/article?id=11004                                                                   |

## Example Images

1a. Fasta file![Fasta](/images/fasta.png)
1b. Fastq file![Fastq](/images/fastq.png)

1c. UBAM file - no image  

2a1. SAM file format![SAM-format](/images/sam-format.png) 
2a2. SAM file example![SAM](/images/sam.png)
2b. BAM file being read with IGV viewer tool![BAM](/images/viz-bam.png)
3a. VCF file![VCF](/images/vcf-file.png)
3b. GVF file to VCF file comparison![GVCF](/images/gvcf.png)

### Image References and Links
 - FASTA/FASTQ images from [link](https://www.researchgate.net/publication/309134977_A_Survey_on_Data_Compression_Methods_for_Biological_Sequences)
 - BAM w/IGV from [link](https://gatkforums.broadinstitute.org/gatk/discussion/6491/howto-visualize-an-alignment-with-igv)
 - IGV (Integrative Genomics Viewer) tool at [link](http://software.broadinstitute.org/software/igv/)
 - VCF image from [link](https://www.researchgate.net/figure/shows-an-example-VCF-file-For-more-details-about-VCF-files-refer-to-the-specification_fig6_316063749)
 - GVCF vs. VCF comparison from [link](https://gatkforums.broadinstitute.org/gatk/discussion/4017/what-is-a-gvcf-and-how-is-it-different-from-a-regular-vcf)
 - General reference 'How sequencing works' from [link](https://learn.gencore.bio.nyu.edu/ngs-file-formats/how-sequencing-works/)
 - How to generate a BAM from [link](https://gatkforums.broadinstitute.org/gatk/discussion/5969/how-to-generate-a-bam-for-variant-discovery-long) and image below  

 ![Generate-BAM](/images/generate-BAM.png)




