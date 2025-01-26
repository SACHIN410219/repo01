#!/bin/bash

for i in $*
do
        num=$i
        sum=0

        while [ $num -gt 0 ]
        do
                sum=$((sum + num))
                num=$((num - 1))
        done
        echo "factorial of $i is $sum"
done

