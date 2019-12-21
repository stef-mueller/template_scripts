#!/usr/bin/env bash
#$ -S /bin/bash
#$ -l tmem=1G
#$ -l h_vmem=1G
#$ -l h_rt=0:30:00 
#$ -t 1-2
#$ -tc 1
#$ -j y
#$ -N test
#$ -cwd
#$ -l tscratch=1G

# --- Script objective
echo "--------------------------------------------------------------------------"
echo "Sample script on usage of array jobs and TMPDIR space in SGE computer"
echo "science cluster. The flag -t determines the array iterations, while "
echo "flag -tc sets maximum number of jobs allowed to run in parallel."
echo "Furthermore, this script uses the TMPDIR space on the job running node"
echo " and so reducing I/O on the cluster overall."
echo "--------------------------------------------------------------------------"
echo

# --- Define functions
function isinTMP(){

    # objective: check whether file already available in TMPDIR, if not copy there
    
    # input
    FILEPATH=$1 #file to copy with path
    DEST=$2 # destination dir
    FILE=$(basename $FILEPATH) #extract file basename

    if [[ ! -f "$DEST/$FILE" ]]
    then
        cp $FILEPATH $DEST
    fi
}

# --- report working directory
InputDir=$(pwd)
echo "InputDir is $InputDir"

# --- report contents TMPDIR at beginning
echo "JOB right now: $SGE_TASK_ID"
echo 

# --- create temporary test file
touch test_file.$SGE_TASK_ID.txt

# --- if it does not exist, create input directory in TMPDIR
mkdir -p $TMPDIR/input

# --- echo TMPDIR contents at job start
echo "[START] contents TMPDIR"
ls -lhR $TMPDIR
echo

# --- copy test file to TMPDIR/input if it does not exist already
isinTMP "$InputDir/test_file.$SGE_TASK_ID.txt" "$TMPDIR/input"

# --- echo TMPDIR contents at job end
echo
echo "[END] contents $TMPDIR"
ls -lhR $TMPDIR

# --- clean up
rm test_file*


# --- end
echo 
echo "[DONE]