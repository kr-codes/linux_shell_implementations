#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To determine contents of a directory 
Input:  accessing various directories
Output: list content of directories
comment

if [ $# -gt 0 ]
then 
    echo $(dir $1) # to list all the directories of entered path
else
    echo $(dir) # list all directories
fi
