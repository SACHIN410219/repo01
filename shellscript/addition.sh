#!/bin/bash
echo "Addition of 2 numbers"
echo "please enter the 1st number"
read num1
echo "enter the 2nd number"
read num2

sum=$(( $num1 + $num2 ))

echo "The sum of 2 numbers is $sum "
