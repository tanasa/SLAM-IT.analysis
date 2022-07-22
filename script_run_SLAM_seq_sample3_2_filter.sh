#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk filter \
-o Sample3_R1_out_2_filter \
-t 8 \
./Sample3_R1_out_1_map/Sample-3_R1_001.fastq_slamdunk_mapped.bam
