/** gist at https://gist.github.com/lindenb/83c3ee35b9f8e2c3037551ca1f0c9a79 */
/** created by https://gist.github.com/lindenb **/

params.directories="."
params.help=false
params.references=""
params.prefix=""
params.publishDir="."
params.extrafind=""

references = file(params.references)

def helpMessage() {
  log.info"""

=========================================
Usage:
	convert BAM to crams

Mandatory arguments:
	--directories (dir) where to find the BAM
	--references (file) path to the known references. One fasta per line. Must have associated fai and dict

Other options:
        --prefix (name) final prefix
        --publishDir (dir) 
	--extrafind (string) extra parameters for 'find' (size, date, etc... )

Nextflow options:
  -w  Work directory used by Nextflow.

workflow Author: Pierre Lindenbaum @yokofakun 20200304
=========================================

  """
}

if( params.help ) {
    helpMessage()
    exit 0
}

/** awk script converting dict to normalized string for MD5 */
process awkscript {
	cache "lenient"
	executor "local"
	output:
		file("dict.awk") into awk_script
	script:
"""
cat << __EOF__ > dict.awk
BEGIN	{
	FS="\t";
	}
/^@SQ\t/	{
	SN="";
	LN="";
	for(i=2;i<=NF;i++) {
		t=\\\$i;
		if(t ~ /^SN\\\\:/ ) SN=t; 
		else if(t ~ /^LN\\\\:/ ) LN=t; 
		}
	printf("%d,%s,%s\\n",NR,SN,LN);
	}
__EOF__
	
"""
	}

/** finds BAM files under params.directories, create a list of MD5(dict),bam */
process findBams {
	cache "lenient"
	executor "local"
	input:
		file awk from awk_script
	output:
		file("bams.csv") into bams_csv
	script:
	"""
	set -o pipefail
	find ${params.directories} -type f ${params.extrafind} -name "*.bam" | while read B
	do
		samtools view -H "\${B}" > jeter.header
		
		if grep -F "SO:coordinate" jeter.header ; then
			awk -f ${awk} jeter.header | md5sum | cut -d ' ' -f 1 | tr "\\n" "," >> jeter.list
			echo "\${B}" >> jeter.list
		fi
	done
	sort -T . -t, -k1,1 jeter.list | uniq > bams.csv
	rm -f jeter.header jeter.list
	"""
	}

/** create a list of MD5(dict),ref.fasta */
process findReferences {
	cache "lenient"
	executor "local"
	input:
		file awk from awk_script
		file refs from references
	output:
		file("refs.csv") into refs_csv
	script:
	"""
	set -o pipefail
	
	cat ${refs} | while read F
	do
		awk -f ${awk}  "\${F%.*}.dict"  | md5sum | cut -d ' ' -f 1 | tr "\\n" "," >> jeter.list
		echo "\${F}" >> jeter.list
	done
	sort -T . -t, -k1,1 jeter.list | uniq > refs.csv

	cut -f 1 refs.csv | sort | uniq -d > dups.txt && test ! -s dups.txt && rm dups.txt
	rm jeter.list
	"""
	}

/** join BAM and REF on MD5(dict) */
process joinBamAndRef {
	cache "lenient"
	executor "local"
	input:
		file refs from refs_csv
		file bams from bams_csv
	output:
		file("ref_bam.csv") into bam_refs
	script:
	"""
	join -t, -11 -21  ${bams} ${refs} | cut -d, -f2- > ref_bam.csv
	"""
	}

bam_refs.splitCsv(header: false,sep:',',strip:true).set{bam_ref}

/** convert a BAM TO CRAM */
process convertBamToCram  {
	cache "lenient"
	tag "${bam}"
	maxForks 5
	cpus 5
	errorStrategy 'finish'

	input:
		set bam,reference from bam_ref
	output:
		file("report.txt") into report
	script:
	"""
	set -o pipefail

	cleanup () {
		rm -f jeter.cram jeter.cram.crai
	}

	trap cleanup ERR

	DIR=\$(dirname "${bam}")
	BASENAME=\$(basename "${bam}" .bam)
	
	if [ -w "\${DIR}" ] && [ -w "${bam}" ] && [ -f "${reference}" ] && [ ! -f "\${DIR}/\${BASENAME}.cram" ] ; then

		samtools view  --output-fmt-option level=9 --threads "${task.cpus}" --reference "${reference}"  -C -o "jeter.cram" "${bam}"
		
		samtools index "jeter.cram"

		echo -n "${bam}\\t${reference}" > report.txt
		stat --printf '\\t%s' "${bam}" >> report.txt
		stat --printf '\\t%s\\n' "jeter.cram" >> report.txt

		mv -v jeter.cram "\${DIR}/\${BASENAME}.cram"
		mv -v jeter.cram.crai "\${DIR}/\${BASENAME}.cram.crai"

		rm -f -v  "\${DIR}/\${BASENAME}.bai" "\${DIR}/\${BASENAME}.bam.bai" 
		rm -v "${bam}"
	else
		echo "#ERROR ${bam} ${reference}" > report.txt
	fi
	"""
	}

process final_report {
	publishDir "${params.publishDir}" ,  mode: 'copy', overwrite: true
	executor "local"
	input:
		val L from report.collect()
	output:
		file("${params.prefix}report.txt") into final_report
	script:
	"""
	cat  ${L.join(" ")} > ${params.prefix}report.txt
	"""
	}