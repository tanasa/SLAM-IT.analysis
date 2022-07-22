#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk count \
-o Sample9_R1_out_4_count_GSE99970_GSE99970_mESC_UTR_regions.downloaded.GSE99970.03sep2020.bed \
-s Sample9_R1_out_3_snp \
-r GRCm38.primary_assembly.genome/GRCm38.primary_assembly.genome.fa \
-b GSE99970_GSE99970_mESC_UTR_regions.downloaded.GSE99970.03sep2020.bed \
-t 8 \
Sample9_R1_out_2_filter/Sample-9_R1_001.fastq_slamdunk_mapped_filtered.bam




