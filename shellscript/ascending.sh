#!/bin/bash
#executer: Rakesh k
#Date: 07-01-2025
#Desc: ascendding order upto input

echo "enter the no upto which  ascending order no's should generate"
read num
min=0
while [ $min -le $num ]
do

	echo -n " 
	$min	"
	((min++))
done
