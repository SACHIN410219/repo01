#!/bin/bash

#executer: Rakesh k
#Date: 07-01-2025
#Desca: character count in a file
linen=1
 while read line
 do
	 char=`echo $line | wc -c`
	 echo "$linen" line the characters are"$char"
	 linen=$(( linen + 1 ))


 done <$1 
