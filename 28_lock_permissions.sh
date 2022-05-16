#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: to lock down files permissions for a directory  
Input:  directory name
Output: file permissions changed
comment

if [ $# -gt 0 ]
then 
    echo "Before locking"
    ls -l # to list all the permissions of entered path
    chmod 700 $1
    echo "After locking"
    ls -l
else
    echo "Please pass the directory in command line"
fi
