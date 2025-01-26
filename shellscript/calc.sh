#!/bin/bash

echo "Welcome to the Simple Calculator!"
echo "Select an operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"

# Read user choice
read -p "Enter your choice (1/2/3/4): " choice

# Read numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Perform the calculation based on the choice
case $choice in
  1)
    result=$(echo "$num1 + $num2" | bc)
    echo "The result of $num1 + $num2 is: $result"
    ;;
  2)
    result=$(echo "$num1 - $num2" | bc)
    echo "The result of $num1 - $num2 is: $result"
    ;;
  3)
    result=$(echo "$num1 * $num2" | bc)
    echo "The result of $num1 * $num2 is: $result"
    ;;
  4)
    if [ "$num2" -eq 0 ]; then
      echo "Division by zero is not allowed."
    else
      result=$(echo "scale=2; $num1 / $num2" | bc)
      echo "The result of $num1 / $num2 is: $result"
    fi
    ;;
  *)
    echo "Invalid choice! Please select 1, 2, 3, or 4."
    ;;
esac

