#!/bin/bash

echo "Enter the value of n: "
read n

# set the first two Fibonacci numbers
num1=0
num2=1

# print the first n Fibonacci numbers
for (( i=0; i<$n; i++ ))
do
  echo "$num1"
  sum=$((num1 + num2))
  num1=$num2
  num2=$sum
done
