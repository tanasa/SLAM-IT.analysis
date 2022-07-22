#!/bin/bash

################################################################################################

module load legacy/scg4
module load r/3.6

singularity exec SLAMDUNK_SINGULARITY/slamdunk_latest.sif slamdunk map \
-r ./GRCm38.primary_assembly.genome/GRCm38.primary_assembly.genome.fa \
-o Sample10_R1_out_1_map \
-t 8 \
./Sample10/Sample-10_R1_001.fastq.gz 
