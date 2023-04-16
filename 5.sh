#!/bin/bash

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Enter operation (+, -, *, /):"
read operation

if [ "$operation" = "+" ]; then
  result=$(echo "$num1 + $num2" | bc)
elif [ "$operation" = "-" ]; then
  result=$(echo "$num1 - $num2" | bc)
elif [ "$operation" = "*" ]; then
  result=$(echo "$num1 * $num2" | bc)
elif [ "$operation" = "/" ]; then
  result=$(echo "scale=2; $num1 / $num2" | bc)
else
  echo "Invalid operation"
  exit 1
fi

echo "Result: $result"
