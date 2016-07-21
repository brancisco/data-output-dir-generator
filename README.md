#Generating Data Output Directories

## Overview

Bash script to generate a directory structure to keep output organized.

### Structure of Directories

The bash script will search the current directory for a dir named after the current date, formatted as month\_day\_year. If not found, it will generate a dir using the aforementioned scheme.

Next it will generate an entry directory inside of the "date" dir. This entry directory will be suffixed with an underscore followed by a number. The number represents which entry this was on the date it was made.

Inside of the entry directory, the script can create whatever final output directories desired. These can be changed by editing the variable `OUTPUT_DIRECTORIES` in the bash script.

When changing the names of the final output directories, the names should be separated by a single space. Example below.

`OUTPUT_DIRECTORIES='log_files data_frames figures'`

Below is an example of how the directories are structured.

```
*
+-- output
|	+-- 07_15_16
|		+-- entry_0
|			+-- data_frames
|			+-- figures
|			+-- log_files
|			+-- note.txt
|		+-- entry_1
|			+-- data_frames
|			+-- figures
|			+-- log_files
|	+-- 07_16_16
|		+-- entry_0
|			+-- data_frames
|			+-- figures
|			+-- log_files
|			+-- note.txt
|		+-- entry_1
|			+-- data_frames
|			+-- figures
|			+-- log_files
```

### Note Feature

To help keep track of differences in each entry, you can supply the bash script with a single argument containing a note about the entry. The argument should be in the form of a string e.g. `$ dirSetUp.sh "This is a note about this entry."`

The note will be saved in that entry's directory in a file named note.txt. If no note is supplied to the script, it will not write any note.txt file.

### Usage

You must be in the directory that will hold all of your data entries. Something like `output`. Then call the script from the command line and it will generate a dir for your first entry.

For the script to be called from anywhere, you should put the script in your bin. 


`$ dirSetUp.sh`

`$ dirSetUp.sh "Note about this entry"`


