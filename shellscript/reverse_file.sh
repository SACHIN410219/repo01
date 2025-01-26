#!/bin/bash
#executer: Rakesh k
#Date: 08-01-2025
#Desc: reverse file content 


file=$1
lines=()

while read line; do
    lines+=("$line")
done < "$file"

# Print lines in reverse order
for (( i=${#lines[@]}-1; i>=0; i-- )); do
    echo "${lines[i]}"
done

