#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: A recursive function to print each argument passed. 
Input: numbers as the arguments
Output: to echo each first positional argument

for array in $*
#do
    recursive $array
done

array=$*
for i in array
do
    echo i
done
comment

function recursive {
    count=$#
    echo $count
    if [ $count -eq 0 ];then
        echo
    else
        echo $1
        recursive $(($count-1))
    fi
}

recursive $1

