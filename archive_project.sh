#!/bin/bash

#Archive larger files or archive older files

#In the given directory, if you find files more than given size ex:20mb or files older than given days ex:10days
#compress those files and move it to archive folder

#variables list
BASE=/home/ubuntu/projects/shell projects
DAYS=10
DEPTH=1
RUN=0

#check if the directory is present or not
if [ ! -d $BASE ]
then
	echo "directory does not exist : $BASE"
	exit 1
fi

#create 'archive' folder if not present
if [ ! -d $BASE ]
then
    mkdir $BASE/archive	
fi

#find the list of files larger than 20MB
for i in 'find $BASE -maxdepth $DEPTH -type f -size +20M'
do
	if [ $RUN -eq 0 ]
	then
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done







