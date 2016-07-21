#!/bin/bash

# OUTPUT_DIRECTORIES contains the names of the final output directories
# directory names should be seperated by a single space
OUTPUT_DIRECTORIES='log_files data_frames figures'


CURRENT_DAY=$(date +"%m_%d_%y")

# If no file exists with todays date
if [ ! -e $CURRENT_DAY ]
	then
		echo 'No entries for todays date...'
		echo 'Creating new dir' $CURRENT_DAY
		# create dir named todays date
		mkdir $CURRENT_DAY
fi

# move into todays dir
cd $CURRENT_DAY

# count how many files in directory
NUM_ENTRIES=$( ls | wc -l )

# remove white space
shopt -s extglob
NUM_ENTRIES=${NUM_ENTRIES##*( )}
shopt -u extglob

# tell user how many times program has been run today
echo 'Creating entry' $NUM_ENTRIES'.'

# create new entry
NEW_ENTRY='entry_'$NUM_ENTRIES
mkdir $NEW_ENTRY

# move into current entry dir
cd $NEW_ENTRY

# write first argument to note.txt if arg exists
if [ $# -eq 1 ]
	then
		echo $1 > note.txt
fi

# create directories to store data files
mkdir $OUTPUT_DIRECTORIES

# move back to current date dir
cd ../

# move back to output dir
cd ../


