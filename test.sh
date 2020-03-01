#!/bin/bash

# Author : Sankshit Pandoh
# Script follows here:
shopt -s dotglob
count=0
for dir in *; do
  test -d "$dir" || continue
  test . = "$dir" && continue
  test .. = "$dir" && continue
  ((count++))
done
echo $count
VARIABLE_A=$count
echo $VARIABLE_A
