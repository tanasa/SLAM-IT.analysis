#!/bin/bash

module load samtools/1.9

############

FILE=$1

############

samtools flagstat -@ 8 \
$FILE \
> "${FILE}.flagstat.txt"

###

samtools sort -@ 8 \
-o "${FILE%.bam}.sort.bam" \
$FILE


samtools index -@ 8 \
"${FILE%.bam}.sort.bam"

###

samtools flagstat -@ 8 \
"${FILE%.bam}.sort.bam" \
> "${FILE%.bam}.sort.bam.flagstat.txt"

######################################
######################################

samtools idxstats -@ 8 \
"${FILE%.bam}.sort.bam" \
> "${FILE%.bam}.sort.bam.idxstats.txt"


samtools stats -@ 8 \
"${FILE%.bam}.sort.bam" \
> "${FILE%.bam}.sort.bam.stats.txt"

#####################################
####################################
