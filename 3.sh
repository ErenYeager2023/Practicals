#!/bin/bash

# check if correct number of arguments were provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 filename start_line_number end_line_number"
  exit 1
fi

# assign arguments to variables
filename=$1
start=$2
end=$3

# check if file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' does not exist"
  exit 1
fi

# check if start and end line numbers are valid
num_lines=$(wc -l < "$filename")
if (( start < 1 || end > num_lines )); then
  echo "Error: Invalid start or end line number"
  exit 1
fi

# display lines between start and end line numbers
sed -n "${start},${end}p" "$filename"
