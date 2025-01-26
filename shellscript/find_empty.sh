#executer: Rakesh k
#Date: 08-01-2025
#Desc: identifying file directory or link
#
#!#/bin/bash

echo " enter file name"
read fname

if [ -f $fname ]; then
	mem=$(du -b "$fname" |awk -F " " {'print $1'})

	if [ $mem -eq 0 ]; then
	echo " this is a empty file "
	else
	echo " this file having content with $mem size"
	fi
else
echo " this is not file"
fi
