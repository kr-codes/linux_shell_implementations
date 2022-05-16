#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: to replace 20% lines in a C file randomly and replace it with the pattern <---DEL--->
Input: to enter a .c file
Output: To display if entered user is present or not
comment
# 20% of x lines in sample.c

total_lines=$(cat $1 | wc -l)
echo total lines is $total_lines

replace_lines=$((0.2*$total_lines))
echo replace line is $replace_lines
<<comm
if [ $# -gt 0 ] ; then
    if [ -f $1 ] ; then
        if [ -s $1 ] ; then
            echo
        else
            echo "Error: $1 is a an empty file. So cant replace string" ; fi
    else
        echo "Error: No such a file" ; fi
else
    echo "Error: Please pass the file name through command line" ; fi
comm
