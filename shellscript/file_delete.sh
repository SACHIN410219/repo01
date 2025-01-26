

#!/bin/bash

#executer: Rakesh k
#Date: 07-01-2025
#Desc: delete the files which is old than 20 days and retain recent 10files

directory="/home/ubuntu/shell_script/dir"
echo " choose 1 for delete files which are older file"
echo " choose 2  to retain recent files and delete remaining "
read -p "enter ur choice" option
case $option in
1) 

echo "enter how many days files u like to delete"
read days

ls -ll
#cat presentfile_list
find "$directory" -type f -mtime +$days | xargs rm -rf
echo " file are deleted $days old files and remaining files are below"
ls -tll
;;
2)

echo "enter how many recent files u like to retain and delete remaining "
read retain

ls -llt | sed "1,${retain}d" | xargs rm -f
echo " $retain file are retained and remaining deleted and retained files are"
ls -tll 
;;
esac
