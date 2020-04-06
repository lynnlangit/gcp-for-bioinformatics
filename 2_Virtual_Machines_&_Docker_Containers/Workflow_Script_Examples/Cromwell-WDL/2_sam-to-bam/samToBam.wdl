## Copyright Broad Institute, 2017
## This script should convert a CRAM to SAM to BAM and output a BAM, BAM Index, and validation report to a Google bucket. If you'd like to do ## this on multiple CRAMS, create a sample set in the Data tab.  
## The reason this approach was chosen instead of converting CRAM to BAM directly using Samtools is because Samtools 1.3 produces incorrect 
## bins due to an old version of htslib included in the package. Samtools versions 1.4 & 1.5 have an NM issue that causes them to not validate ## with Picard. 
## 
## TESTED: It was tested using the Genomes in the Cloud Docker image version 2.3.1-1500064817. 
## Versions of other tools on this image at the time of testing:
## PICARD_VER=1.1150
## GATK34_VER=3.4-g3c929b0
## GATK35_VER=3.5-0-g36282e4
## GATK36_VER=3.6-44-ge7d1cd2
## GATK4_VER=4.beta.1
## SAMTOOLS_VER=1.3.1
## BWA_VER=0.7.15.r1140
## TABIX_VER=0.2.5_r1005
## BGZIP_VER=1.3
## SVTOOLKIT_VER=2.00-1650
## It was tested pulling the HG38 reference Fasta and Fai.
## Successfully tested on Cromwell version 28. Does not work on versions < v23 due to output syntax 
## Runtime parameters are optimized for Broad's Google Cloud Platform implementation. 
##
## LICENSING : This script is released under the WDL source code license (BSD-3) (see LICENSE in https://github.com/broadinstitute/wdl). 
## Note however that the programs it calls may be subject to different licenses. Users are responsible for checking that they are authorized to run all programs before running this script. 
## Please see the docker for detailed licensing information pertaining to the included programs.

version 1.0

#WORKFLOW DEFINITION
workflow CramToBamFlow {
Int cram_to_bam_disk_size
Int validate_sam_file_disk_size
String cram_to_bam_mem_size
String validate_sam_file_mem_size

String? gotc_docker_override
String gotc_docker = select_first([gotc_docker_override, "broadinstitute/genomes-in-the-cloud:2.3.1-1500064817"])

#converts CRAM to SAM to BAM and makes BAI
call CramToBamTask{
	input:
	disk_size = cram_to_bam_disk_size,
	mem_size = cram_to_bam_mem_size,
        docker_image = gotc_docker	
}

#validates Bam
call ValidateSamFile{
	input:
	input_bam = CramToBamTask.outputBam,
        disk_size = validate_sam_file_disk_size,
        mem_size = validate_sam_file_mem_size,
        docker_image = gotc_docker	
}

#Outputs Bam, Bai, and validation report to the FireCloud data model
output {
    File outputBam = CramToBamTask.outputBam
    File outputBai = CramToBamTask.outputBai
    File validation_report = ValidateSamFile.report
  }

}

#Task Definitions
task CramToBamTask {

File RefFasta
File RefIndex
File RefDict
File InputCram
#File InputCrai
String SampleName
Int disk_size
String mem_size
String docker_image


#Calls samtools view to do the conversion
command {
#Set -e and -o says if any command I run fails in this script, make sure to return a failure
set -e
set -o pipefail

samtools view -h -T ${RefFasta} ${InputCram} |
samtools view -b -o ${SampleName}.bam -
samtools index -b ${SampleName}.bam
mv ${SampleName}.bam.bai ${SampleName}.bai
}

#Run time attributes:
#Use a docker with samtools. Set this up as a workspace attribute.
#cpu of one because no multi-threading is required. This is also default, so don't need to specify.
#disk_size should equal input size + output size + buffer

runtime {
    docker: docker_image
    memory: mem_size
    cpu: "1"
    disks: "local-disk " + disk_size + " HDD"
	}
    
#Outputs a BAM and BAI with the same sample name
output {
	File outputBam = "${SampleName}.bam"
	File outputBai = "${SampleName}.bai"
	}
}

#Validates BAM output to ensure it wasn't corrupted during the file conversion
task ValidateSamFile {
  File input_bam
  String output_name = basename(input_bam, ".bam") + ".validation_report"
  Int disk_size
  String mem_size
  Int preemptible_tries
  String docker_image

  command {
    java -Xmx3000m -jar /usr/gitc/picard.jar \
      ValidateSamFile \
      INPUT=${input_bam} \
      OUTPUT=${output_name} \
      MODE=SUMMARY \
      IS_BISULFITE_SEQUENCED=false 
  }
  #Run time attributes:
  #Use a docker with the picard.jar. Set this up as a workspace attribute.
  #Read more about return codes here: https://github.com/broadinstitute/cromwell#continueonreturncode
		runtime {
    docker: docker_image
    memory: mem_size
    disks: "local-disk " + disk_size + " HDD"
    preemptible: preemptible_tries
    continueOnReturnCode: [0,1]
  }
  #A text file is generated that will list errors or warnings that apply. 
  output {
    File report = "${output_name}"
  }
}
