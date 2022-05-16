#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To determine whether a given file system or mount point is mounted. 
Input: a file system
Output: to find if given file system is mounted or not
comment

# df -h $1 
# df -k /tmp | tail -1 | tr -s ' ' | cut -d' ' -f4
use_percent=$(df -k /tmp | tail -1 | tr -s ' ' | cut -d' ' -f5)
path=$(df -k /tmp | tail -1 | tr -s ' ' | cut -d' ' -f6)
free_space=$(df -k /tmp | tail -1 | tr -s ' ' | cut -d' ' -f4)

if [ $# -gt 0 ]
then
    if mountpoint -q "$1"; then
        echo "$1 is mounted on $path and it is having $use_percent used space with $free_space free"
    else
        echo "$1 is not a mounted."
    fi
else
    echo "Error: Please pass the name of the file-system throughcommand line."
fi
