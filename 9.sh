#!/bin/bash

echo "Enter a string: "
read string

# reverse the string
reverse=$(echo "$string" | rev)

# compare the original and reversed strings
if [ "$string" = "$reverse" ]; then
  echo "The string is a palindrome."
else
  echo "The string is not a palindrome."
fi
