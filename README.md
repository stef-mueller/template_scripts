# Collection of script templates

## loop over job submissions

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