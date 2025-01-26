#!/bin/bash

#executer: Rakesh k
#Date: 08-01-2025
#Desc: disk memory utlisied more than limit get alert
echo "enter a value"
read  useri
#useri=40
dsize=`df -h . | awk -F " " '{print $(NF-1)}' |tail -1| sed 's/%/ /g'`

if [ "$dsize" -gt "$useri" ]; then
    echo " Alert! Disk usage is above your limit ($useri%). Current usage: $dsize%"
else
    echo " The disk memory is within the threshold limit ($useri%). Current usage: $dsize%"
fi






