#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk count \
-o Sample9_R1_out_4_count \
-s Sample9_R1_out_3_snp \
-r GRCm38.primary_assembly.genome/GRCm38.primary_assembly.genome.fa \
-b mm10.genes.intervals.use.intermed.SLAMseq.full.length.bed \
-t 8 \
Sample9_R1_out_2_filter/Sample-9_R1_001.fastq_slamdunk_mapped_filtered.bam




