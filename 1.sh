#!/bin/bash

echo "Files with read, write, and execute permissions:"

# loop through each file in the current directory
for file in *
do
  # check if the file has read, write, and execute permissions for the user
  if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
    echo "$file"
  fi
done
