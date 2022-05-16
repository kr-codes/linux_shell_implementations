#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description:Program to print contents of file from given number of lined to 
nect given number of lines
Input: starting line number and number of files
Output: to print n lines
comment

if [ $# -gt 0 ]
then
    start_line=$1
    end_line=$2
    total_lines=$((start_line+end_line-1)) 
    #-1 because the entrered line balue is also included
    head -n $total_lines myfile.txt | tail -n $end_line #print first all total lines and print last n lines
else 
    echo "Error: Argument missing!"
    echo "Usage:./file_filter.dh start_line uptoline filename"
    echo "For eg. ./20_file_filter.sh 5 5 <file>"
fi
