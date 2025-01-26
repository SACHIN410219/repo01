#!/bin/bash

if [ $# -eq 1 ] 
then
	echo "you have enter only 1 argument please enter only 2 arguments"
	exit
fi
if [ $# -ne 2 ] 
then
	echo "please enter only 2 arguments"
	exit
fi	
if [ $1 -gt $2 ] 
then
	echo "$1 is the biggest number"
else
	echo "$2 is the biggest number"
fi	

