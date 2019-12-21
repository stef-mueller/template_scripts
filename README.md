# Collection of script templates

## loop_over_job_submissions

### Intent:
loop over list with input files for whom to perform same analysis per chromosome
### Executable: 
[while_loop.sh](loop_over_job_submissions/while_loop.sh)
### Input: 
1. [tmp.files.txt](loop_over_job_submissions/tmp.files.txt) > text file with absolute file paths; one file per line
2. [example_script.sh](loop_over_job_submissions/example_script.sh) > analysis script which will be executed once per sample and chromosome

### Usage:
```bash
./while_loop.sh
```

### Possible Modifications:
* update files to work on by replacing *tmp.files.txt*
* update chromosome to work on by modifying array called chromosomes in *while_loop.sh*
* change analysis script by replacing *example_script.sh*

## cluster_usage

### Intent:
Based on UCL CS cluster, instead of using a loop to submit same job for numerous input files,
setup a job array. Advantage is that the number of jobs to be run in parallel can be defined,
which is of interest for especially demanding computations.
### Executable:
[test_array_scratch.sh](cluster_usage/test_array_scratch.sh)
### Input
-- none --
script created temporary test files
### Usage
```bash
./test_array_scratch.sh
```
