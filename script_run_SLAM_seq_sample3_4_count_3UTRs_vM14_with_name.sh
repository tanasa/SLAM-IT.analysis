#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk count \
-o Sample3_R1_out_4_count_27aug2020_with_name \
-s Sample3_R1_out_3_snp \
-r GRCm38.primary_assembly.genome/GRCm38.primary_assembly.genome.fa \
-b 3UTRs_vM14_github_repository.28aug2020.with.SYMBOLS.to.use.bed \
-t 8 \
Sample3_R1_out_2_filter/Sample-3_R1_001.fastq_slamdunk_mapped_filtered.bam




