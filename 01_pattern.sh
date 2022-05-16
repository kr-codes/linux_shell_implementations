#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: pattern assignment
Input: any positive number greater than 2
Output: generate pattern for specified number of rows
comment

read -p "Enter the number of rows for pattern: " number

function pattern
{
   for rows in `seq $number`
   do
       for columns in `seq $rows`
       do
           echo -n $columns
       done
       echo
   done
}

#error validation to check only for positive numbers gretaer than 2
if (( number <= 2 ))
then 
    echo ERROR! Enter a positive number greater than 2 
else
    pattern $number #function call for pattern generation
fi

