#!/usr/bin/env bash

# --- get input from command line
# Input file
INPUT=$1
# Chromosome to operate on
CHROM=$2
# Output directory
OUTPUTDIR=$3

# --- create other variables
OUTPUT=$(basename $INPUT | sed "s/.bam/.chr${CHROM}.g.vcf.gz/g")

# --- echo parameter to standard output
echo "#---------------------------------------------------------------"
echo "#ANALYSIS START: $(date '+%Y-%m-%d %T')"
echo "#SCRIPT: $0"
echo "#INPUT FILE: $INPUT"
echo "#INPUT CHROM: $CHROM"
echo "#OUTPUT NAME: $OUTPUT" 
echo "#OUTPUT FILE: $OUTPUTDIR/$OUTPUT" 
echo "#---------------------------------------------------------------"

# --- perform loop: simple echo statement to demonstarte usage

echo "gatk -I $INPUT \ "
echo "  -L $CHROM \ "
echo "  -O $OUTPUT "

# --- example analysis: gatk haplotype caller

# command commented-out, set further input and make sure executable is in path

# gatk \
#    --java-options "-Xmx60g -XX:MaxHeapSize=2g -XX:CompressedClassSpaceSize=256m" \
#    HaplotypeCaller \
#    -I "$INPUT" \
#    -R "$REFERENCE" \
#    -L $CHROM \
#    -D "$DBSNP" \
#    -ERC GVCF \
#    -O "${OUTPUTDIR}/${OUTPUT}.chr${CHROM}.g.vcf.gz"


