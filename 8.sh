#!/bin/bash

echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

# ensure num1 is greater than or equal to num2
if [ $num1 -lt $num2 ]; then
  temp=$num1
  num1=$num2
  num2=$temp
fi

# calculate the GCD using Euclid's algorithm
while [ $num2 -ne 0 ]
do
  remainder=$((num1 % num2))
  num1=$num2
  num2=$remainder
done

echo "The GCD is: $num1"
