#!/bin/bash
echo "enter the no for  descending order"
read num
while [ $num -gt 0 ]
do
	echo $num
	num=`expr $num - 1`
done
