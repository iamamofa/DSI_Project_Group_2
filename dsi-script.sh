#!/usr/bin/env bash

/home/dsi-student4/bin/ExpansionHunter \\\
    --reads ~/public/project1-expansions/ERR1955415.bam \\\
    --reference ~/public/genomes/GRCh37.fa \\\
    --variant-catalog ~/public/project1-expansions/variant_catalog/grch37/variant_catalog.json \\\
    --output-prefix ERR1955415\
\
/home/dsi-student4/bin/samtools sort -o ERR1955415_realigned.sorted.bam ERR1955415_realigned.bam\
\
\
# creates ERR1955424_realigned.sorted.bam.bai\
\
\
\
/home/dsi-student4/bin/samtools sort ERR1955415_realigned.bam -o ERR1955415_realigned_sorted.bam\
\
/home/dsi-student4/bin/samtools index ERR1955415_realigned.sorted.bam\
\
\
/home/dsi-student4/bin/REViewer \\\
    --reads ERR1955415_realigned.sorted.bam \\\
    --vcf ERR1955415.vcf \\\
    --reference ~/public/genomes/GRCh37.fa \\\
    --catalog ~/public/project1-expansions/variant_catalog/grch37/variant_catalog.json \\\
    --locus C9ORF72 \\\
    --output-prefix ERR1955415\
\
\
\
\
\
\
\
\
\
\
\
}