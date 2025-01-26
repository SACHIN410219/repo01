#!/bin/bash

echo "Enter a number:"
read num

if [[ ! "$num" =~ ^[0-9]+$ ]]; then
    echo "Please enter a number."
    exit 1
fi

for ((i=$num; i>=1; i--)); do
    sum=$((sum + i))
done

echo "The sum of numbers from $num is $sum"
