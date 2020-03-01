#!/bin/bash

# Author : Sankshit Pandoh
# ----------------------Still under construction
# Script follows here:
shopt -s dotglob
count=0
#inital count set to zero
#folder counting loop begins here
for dir in *; do
  test -d "$dir" || continue
  test . = "$dir" && continue
  test .. = "$dir" && continue
  ((count++))
done
echo $count
VARIABLE_A=$count
echo $VARIABLE_A
#create an array with all the filer/dir inside ~/myDir
arr=(~/myDir/*)

#or other approach
# iterate through array using a counter
for ((i=0; i<${#arr[@]}; i++)); do
    #do something to each element of array
    echo "${arr[$i]}"
done
