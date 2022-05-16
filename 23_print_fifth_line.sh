#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: 5th line of a file passess through command line
Input: input file
Output: random 8 character password to be generated
comment


if [ $# -gt 0 ] ; then #to check if arguments is passed
    if [ -f $1 ] ; then # to check if file exists
        if [ -s $1 ] ; then # to check if file is not empty
            word_count=$(cat $1 | wc -l) # to check number of lines
            if [ $word_count -gt 5 ] ; then # to check if # lines is > 5
                echo $(head -n 5 $1 | tail -n 1)  #to print 5th line
            else echo "Error: $1 having only $word_count line. So can't print 5th line" ; fi
        else echo "Error: File is empty" ; fi
    else echo "Error: File does not exist" ; fi
else echo "Error: Please pass the file name in command line" ; fi
