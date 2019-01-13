#!/bin/bash

# test that no files are empty

if [ -e test.sh ]
then
  for file in ".$1"/*; do
    if [ -s $file ]; then
      echo "$file not empty"
    else
      echo "ERROR: $file is empty"
    fi
  done;
else
  for file in ".$1"/04-what-broke-this/*; do
    if [ -s $file ]; then
      echo "$file not empty"
    else
      echo "ERROR: $file is empty"
    fi
  done;
fi
