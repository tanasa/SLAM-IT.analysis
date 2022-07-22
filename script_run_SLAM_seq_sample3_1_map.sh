#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk map \
-r ./GRCm38.primary_assembly.genome/GRCm38.primary_assembly.genome.fa \
-o Sample3_R1_out_1_map \
-t 8 \
./Sample3/Sample-3_R1_001.fastq.gz 
