#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: pattern assignment
Input: any positive number greater than 2
Output: generate pattern with number sequence for specified number of rows
comment

read -p "Enter the number of rows for pattern: " number

function pattern
{
   values=1 #values to be printed
   for rows in `seq $number`
   do
       for columns in `seq $rows`
       do
           echo -n "$values "
           values=$((values + 1))
       done
       echo
   done
}

#Error validation, to check only for positive number greater than 2
if (( number <= 2 ))
then 
    echo ERROR! Enter a positive number greater than 2
else
    pattern $number #Function call for pattern generation
fi

