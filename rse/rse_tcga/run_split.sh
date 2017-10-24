#!/bin/bash
#$ -cwd
#$ -m e
#$ -l mem_free=110G,h_vmem=110G,h_fsize=100G
#$ -N split_tcga
#$ -hold_jid tcga.rse

echo "**** Job starts ****"
date

mkdir -p logs

## Split GTEx by tissue
module load R/3.3.x
Rscript split_by_tissue.R

echo "**** Job ends ****"
date

## Move log files
mv split_tcga.* logs/
