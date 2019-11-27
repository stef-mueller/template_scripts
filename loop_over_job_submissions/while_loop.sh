#!/usr/bin/env bash

# --- INPUT
# on which chromosomes to operate
chromosome=( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y )
# list of files with absolute paths to operate on
FILELIST="tmp.file.list.txt"
# which output directory should be used
OUTPUTDIR="outpath"


while read FILE
do
    for CHR in ${chromosome[@]}
    do
        ./example_script.sh $FILE $CHR $OUTPUTDIR
    done
done < $FILELIST
