#!/bin/bash
find ./adoc-folder -name *.adoc |
while read filename
do
    echo "$filename"    # ... or any other command using $filename
    asciidoctor -b docbook $filename
done



echo "done, confert adoc to xml"

find ./adoc-folder -name *.xml |
while read filename
do
    echo "$filename"    # ... or any other command using $filename
    pandoc -f docbook -t gfm $filename -o $filename.md
done
