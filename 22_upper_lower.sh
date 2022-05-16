#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To convert a string from upper to lower 
Input: file input
Output: based on the user input to change from upper to lower or vice versa
comment

if [ $# -gt 0 ] 
then
    if [ -f $1 ]; then #to check if the file exists 
        if [ -s $1 ]; then # to check if input file is empty
            echo 1 - Lower to Upper
            echo 2 - Upper to lower
            read -p "Please select option: " option #read user's choice
            if [ $option -eq 1 ]; then # upper lower or vice versa based user choice
                cat $1 | tr "[:lower:]" "[:upper:]" #translate file contents from lower to upper
            elif [ $option -eq 2 ]; then
                cat $1 | tr "[:upper:]" "[:lower:]"
            else echo "Error: Invalid choice"; fi
        else echo "Error: No contents inside the file"; fi
    else echo "Error: File does not exist"; fi
else echo "Error: Please pass the file name through command line."; fi
