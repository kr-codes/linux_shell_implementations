#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: Fibonacci numbers
Input: number of elements of fibonacci series
Output: fibonacci series
comment

if [ $# -gt 0 ] # to check if argument is entered
then
    if [ $1 -lt 0 ] # to check if the argument is positive
    then      
        echo Error: Please enterpositive elements only
    else 
        # enter the first and second element of the series
        num1=0
        num2=1
        echo -n $num1 
        echo -n , $num2 
        for i in `seq 0 $@` # to repeat the sequence for 0 to entered n times
        do
            num3=`expr $num2 + $num1`
            if [ $num3 -le $@ ] # num3 is less than entered argument 
            then
                echo -n , $num3  
                num1=$num2
                num2=$num3
            fi
        done
        echo
    fi
else
    echo Error: No argument passed
fi

   
