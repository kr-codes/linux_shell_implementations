#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: Reverse a number
Input: A real number
Output: Reversed number 
comment

if [ $# -gt 0 ] # to check if argument is entered
then
    num=$1  #store the number in a vriable
    if [ $((num / 10)) -ne 0 ] #check if the entered number is multidigit 
    then
        reverse=0
        while [ $num -ne 0 ]   #to check the number is real positive or negative
        do
            remainder=$(($num%10)) #remainder
            reverse=$(($reverse*10+$remainder)) #fetch reverse by each digit
            num=$(($num/10))
        done
        echo "Reverse number: $reverse" 
    else
        echo Error: Pass a multi digit number
    fi
else
    echo Error: No argumnet passed
fi

   
