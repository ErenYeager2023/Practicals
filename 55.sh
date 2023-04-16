#!/bin/bash

# prompt the user to enter two numbers
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

# perform addition
sum=$(echo "$num1 + $num2" | bc)
echo "The sum is: $sum"

# perform subtraction
diff=$(echo "$num1 - $num2" | bc)
echo "The difference is: $diff"

# perform multiplication
product=$(echo "$num1 * $num2" | bc)
echo "The product is: $product"

# perform division
if [ "$num2" -eq 0 ]; then
  echo "Division by zero is not allowed!"
else
  quotient=$(echo "scale=2; $num1 / $num2" | bc)
  echo "The quotient is: $quotient"
fi
