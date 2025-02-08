Hello World!

This was a rough and short project on making a RNAseq pipeline, aiming to convert a .fastq file, run a quality control on said .fastq file, align .fastq file to human genome, convert to a .bam file, and piping it into a count matrix.

~

Rough Workflow:
Fastqc → trimmed → fastqc → HISAT2 → featureCounts


~

data/ will contain any .fastq and .fastqc files
bam/ will contain any .bam files
quants/ will contain the count matrix file.


~

Through this project, I was able to test my knowledge on pushing, pulling, and committing changes on GitHub. I also learned how to version control and organizing repositories. i learned different methods to store large files, such as initializing a ".gitignore" and ".gitattributes"

