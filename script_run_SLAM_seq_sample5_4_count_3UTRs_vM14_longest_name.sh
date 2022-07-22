#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk count \
-o Sample5_R1_out_4_count_27aug2020_longest_name \
-s Sample5_R1_out_3_snp \
-r GRCm38.primary_assembly.genome/GRCm38.primary_assembly.genome.fa \
-b 3UTRs_vM14_github_repository.27aug2020.sortdesc.LONG.with.SYMBOLS.to.use.bed \
-t 8 \
Sample5_R1_out_2_filter/Sample-5_R1_001.fastq_slamdunk_mapped_filtered.bam




