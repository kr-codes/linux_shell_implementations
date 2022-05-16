#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: To sort given numbers in ascending or descending based on user input
Input: Numbers to be sorted
Output: to show sorted array based on user's choice
/bin/bash: line 1: comment: command not found
comment


all_elem=($@)
length=$(($#-1))

sort_num=(${all_elem[@]:1:$length}) #to fetch array elements from 1st index

if [ $# -gt 0 ]
then
    comand=$1
    if [ "$comand" = "-a" ]
    then
        echo Ascending order of array elements after sorting
        sort -n <(printf "%s\n" "${sort_num[@]}") | tr "\n" " ";echo  #sorting array elements and print next to eachother with space
    elif [ "$comand" = "-d" ]
    then
        echo Descending order of array elements after sorting
        sort -r <(printf "%s\n" "${sort_num[@]}") | tr "\n" " ";echo  #reverse sorting array elements
    else
        echo Error:Please pass the choice
        echo Usage: ./13_sorting -a/-d 4 23 5 6 7
    fi
else
    echo "Error:Please pass the argument through the command line"
    echo "Usage: ./13_sorting -a/ -d 4 23 5 6 3"
fi

