#!/bin/bash

# Author : Sankshit Pandoh
# ----------------------Still under construction
# Script follows here:
kill -9 `ps aux | awk '{print $2}' | shuf | awk '!(NR%2)'`