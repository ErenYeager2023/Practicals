#!/bin/bash

echo "Enter a number: "
read num

factorial=1

# calculate the factorial of the number
for (( i=1; i<=num; i++ ))
do
  factorial=$((factorial * i))
done

echo "The factorial of $num is: $factorial"
