#!/bin/bash

# Author : Zara Ali
# Copyright (c) Tutorialspoint.com
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
