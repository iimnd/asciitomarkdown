#!/bin/bash
# fileinfo.sh

$FILES=`find . -type f -name "*.adoc"`


for file in $FILES
do

  if [ ! -e "$file" ]       # Check if file exists.
  then
    echo "$file does not exist."; echo
    continue                # On to next.
   fi

  echo $file
  #ls -al $file | awk '{ print $8 "         file size: " $5 }'  # Print 2 fields.
  echo
done  

exit 0
