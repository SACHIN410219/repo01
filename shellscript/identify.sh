#!/bin/bash
#executer: Rakesh k
#Date: 08-01-2025
#Desc: identifying file directory or link
#
#!#/bin/bash

echo "enter the file name"
read name

if [ -L $name ];then
   echo "$name is a Link"
elif [ -d $name ];then
   echo "$name is a directory"
elif [ -f $name ];then
   echo "$name is a file"

else
   echo "$name is not exits"
   fi
