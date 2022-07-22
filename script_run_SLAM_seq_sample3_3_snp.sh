#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk snp \
-o Sample3_R1_out_3_snp \
-r GRCm38.primary_assembly.genome/GRCm38.primary_assembly.genome.fa \
-t 8 \
Sample3_R1_out_2_filter/Sample-3_R1_001.fastq_slamdunk_mapped_filtered.bam

