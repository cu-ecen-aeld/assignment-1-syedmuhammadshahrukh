#!/bin/sh
writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
    echo "Incorrent number of arguments provided. Needed two arguments"
    exit 1
fi

#Extracting the directory name
dirpath=$(dirname $writefile)

#If the directory does not exist then create directory
if [ ! -d $dirpath ]
 then
    mkdir -p $dirpath
fi

echo $writestr > $writefile