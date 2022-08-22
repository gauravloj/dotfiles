#!/bin/bash

# Script to print all the executable files in /usr/local/bin which are not binary file

bindir=/usr/local/bin


files=`ls $bindir/*`

# echo "$files"

for bins in $files
do
  echo "$bins: "
  echo $(file $bins) | grep -v "Mach-O 64-bit executable x86_64" | cut -d: -f1 | xargs head -1
  echo
done


