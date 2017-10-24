#!/bin/bash
#$ -cwd
#$ -m e
#$ -l mem_free=270G,h_vmem=350G,h_fsize=100G
#$ -N merge_sra
#$ -hold_jid sra.rse
#$ -o ./logs/merge_sra.txt
#$ -e ./logs/merge_sra.txt

echo "**** Job starts ****"
date

mkdir -p logs

## Merge all of SRA's RSE objects at the gene and exon levels
module load R/3.3.x
Rscript merge_all.R

echo "**** Job ends ****"
date
