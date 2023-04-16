#!/bin/bash

echo "Enter a number: "
read number

# check if the number is less than or equal to 1
if [ $number -le 1 ]; then
  echo "$number is not a prime number"
  exit 0
fi

# check if the number is divisible by any number between 2 and the number itself - 1
for (( i=2; i<$number; i++ ))
do
  if [ $((number%i)) -eq 0 ]; then
    echo "$number is not a prime number"
    exit 0
  fi
done

echo "$number is a prime number"
