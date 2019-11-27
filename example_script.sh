#!/bin/bash


# take input options from command line
# --- INPUT
# first option: The input file to work on
INPUTFILE=$1
#second option: The chromosome to work on
CHROMOSOME=$2
#third option: Output directory
OUTDIR="..."


# create output name: first get basename of inputfile and then substitute 
OUTPUT_BASENAME=$(basename $INPUTFILE | sed 's/.txt$/g.vcf.gz/g')


# --- perform analysis
# gatk \
#     -T NA \
#     -I "$INPUTFILE" \
#     -L "$CHROMOSOME" \
#     -o "$OUTDIR/$OUTPUT_BASENAME"

echo "gatk \ "
echo "   -T NA \ "
echo "   -I $INPUTFILE \ " 
echo "   -L $CHROMOSOME \ "
echo "   -o $OUTDIR/$OUTPUT_BASENAME"