#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: largest of a number
Input: the list of numbers
Output: largest number
comment


if [ $# -gt 0 ] # to check if argument is entered
then
    num=1 #initially num is 1
    for i in $@ # for loop to accept all the command line arguments
    do
        if [ $i -gt $num ] #if the entered argument is greater than current
        then 
            num=$i #largest value is stored to num
        else
            continue
        fi
    done
    echo "Largest of a number: " $num #to print the largest value
else
    echo Error: No argumnet passed
fi

   
