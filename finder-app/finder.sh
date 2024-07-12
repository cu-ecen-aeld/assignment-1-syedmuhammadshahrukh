#!/bin/sh
#Bash script to find a file in a given directory.

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
    echo "Incorrent number of arguments provided. Needed two arguments"
    exit 1
fi

if [ ! -d $filesdir ]
then
    echo "Provided argument is not a directory."
    exit 1
fi

cd $filesdir
count_files=$(find $filesdir -type f | wc -l)

matching_str_files=$(grep -r $searchstr $filesdir 2>/dev/null | wc -l)

echo The number of files are $count_files and the number of matching lines are $matching_str_files


