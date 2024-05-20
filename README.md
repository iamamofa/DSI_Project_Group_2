# DSI_Project_Group_2
The Identification of pathogenic disease-associated short tandem repeats(STRs) in clinical samples



# Project1: Expansion Hunter Workflow

This project involves the analysis of repeat expansions in genome sequences using ExpansionHunter, Samtools, and REViewer. Below are the step-by-step instructions to run the tools and the expected outcomes for the samples analyzed.

## Tools Directory

The following tools are located in `/home/dsi-student4/bin`:

- ExpansionHunter
- Samtools
- REViewer

## Workflow Steps - Manually running the workflow

### 1. Run ExpansionHunter

Run ExpansionHunter on each sample to detect repeat expansions. The output will include VCF, JSON, and BAM files with read realignments at repeat regions.

```bash
/home/dsi-student4/bin/ExpansionHunter \
  --reads ~/public/project1-expansions/ERR1955415.bam \
  --reference ~/public/genomes/GRCh37.fa \
  --variant-catalog ~/public/project1-expansions/variant_catalog/grch37/variant_catalog.json \
  --output-prefix ERR1955415

```
## Step 2: Sort BAM File
## Sort the realigned BAM file using SAMtools.

```sh
/home/dsi-student4/bin/samtools sort -o ERR1955415_realigned.sorted.bam ERR1955415_realigned.bam
```
## Step 3: Index BAM File
# Index the sorted BAM file using SAMtools.

```sh
/home/dsi-student4/bin/samtools index ERR1955415_realigned.sorted.bam
```

## Step 4: Run REViewer
# Use REViewer to generate visualizations for the specified locus.

```sh
/home/dsi-student4/bin/REViewer \
  --reads ERR1955415_realigned.sorted.bam \
  --vcf ERR1955415.vcf \
  --reference ~/public/genomes/GRCh37.fa \
  --catalog ~/public/project1-expansions/variant_catalog/grch37/variant_catalog.json \
  --locus C9ORF72 \
  --output-prefix ERR1955415
  ```


