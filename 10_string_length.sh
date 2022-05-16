#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: To find length of the entered string
Input: Any string
Output: String length
comment

if [ $# -gt 0 ] # to check if CLA is present
then
    str=($@) # to extract all the command line arguments to str variable
    for i in ${str[@]} #fetching the arguments to loop using arrays
        do
            echo "Length of string ($i) - ${#i}" # print the word and word count using arrays
        done
else
    echo "Error: Please enter some string arguments"
fi   
