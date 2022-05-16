#! /bin/bash
<<comment
Name: Karuna R
Date: 15/06/2020
Description: To rename the current working directory
Input: new name to current working directory
Output:current working directory will be renamed
comment

if [ $# -gt 0 ]
then
    cwd=$(basename $PWD)
    echo $PWD | tr "$cwd" "$1"

    echo "current directory will be renamed to $1"
else
    echo "Error: Please pass the new directory name"
fi

