#!/bin/bash

#executer: Rakesh k
#Date: 7-01-2025
#Desc: biggest of 3 numbers

echo "make sure u dont enter 2 numbers same or equal"
echo "Enter the 1st number"
read num1
echo "Enter the 2nd number"
read num2
echo "Enter the 3rd  number"
read num3


if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
 echo "$num1 is biggest among $num2 and $num3 "
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
 echo "$num2 is biggest among $num1 and $num3 "
else 
 echo "$num3 is biggest among $num1 and $num2 "
fi 
