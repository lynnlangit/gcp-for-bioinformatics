sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install libncurses5-dev
sudo apt-get install zlib1g-dev
sudo apt-get install liblzma-dev
sudo apt-get install libbz2-dev

# get samtools and unzip
wget https://github.com/samtools/samtools/releases/download/1.x/samtools-1.x.tar.bz2
tar -xjf samtools-1.x.tar.bz2
cd samtools-1.x

# create install dir
mkdir -p /home/username/samtools
./configure --prefix=/home/username/samtools

# compile
make
make install

# put samtools in path
export PATH=/home/username/samtools/bin:$PATH

# verify install
samtools --version

# get sample BAM file
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/wgEncodeUwRepliSeq/wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam

# test samtools with basic commands
samtools index wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam
samtools view wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam | head
samtools flagstat wgEncodeUwRepliSeqBg02esG1bAlnRep1.bam

