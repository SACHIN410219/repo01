#!/bin/bash

#Author: Rakesh k
#Date: 07-01-2025
#Desc: If else

echo "Student pass/fail"
echo "Enter student percentage "
read number
if [ $number -ge 35 ]
then
  echo " The student got pass with the $number % "
else
  echo "student got fail in exam"
fi
