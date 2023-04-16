#!/bin/bash

# check if the correct number of arguments were provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 number1 number2 ... numberN"
  exit 1
fi

# sort the numbers in ascending order using the "sort" command
sorted_numbers=$(printf "%s\n" "$@" | sort -n)

# display the sorted numbers
echo "Sorted numbers in ascending order:"
echo "$sorted_numbers"
