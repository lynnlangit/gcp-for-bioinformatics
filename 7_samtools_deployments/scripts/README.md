# Samtools Test Commands

Quick guide to testing

### put samtools in path

`export PATH=/home/username/samtools/bin:$PATH`


### verify install
```
samtools --version
```

### get sample BAM file
```
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/wgEncodeUwRepliSeq/wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam
```

### test samtools with basic commands
```
samtools index wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam
samtools view wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam | head
samtools flagstat wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam
```
