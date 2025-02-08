#!/bin/bash

SECONDS=O

# Setting Working Directory
cd=/Users/admin/git/RNASeqPipeline

# Running FastQC
fastqc data/demo.fastq -o data/

# Running Trimmomatic
java -jar ~/Downloads/Trimmomatic-0.39/trimmomatic-0.39.jar SE -threads 4 data/demo.fastq data/demo_trimmed.fastq TRAILING:10 -phred33
echo "Trimming done!"

# Running FastQC on Trimmed file
fastqc temp/demo_trimmed.fastq -o data/

# Running HISAT2 to get BAM file
hisat2 -q --rna-strandness R -x ~/GRCh38/GRCh38_index -U data/demo_trimmed.fastq | samtools sort -o bam/demo_trimmed.bam

# Running featureCounts to get count file
featureCounts -a ~/GRCh38/GCF_000001405.40_GRCh38.p14_genomic.gtf -o demo_counts.txt bam/demo_trimmed.bam

duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."