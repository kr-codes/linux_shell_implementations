#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To display if entered user is present or not
Input: none
Output: To display if entered user is present or not
comment

if [ $# -gt 0 ]
then
array=$(cut -f1 -d: /etc/passwd)
count1=0
count2=0
    for user in ${array[@]} ;do # to find all the usernames
        if [[ "$user" != "$1" ]] ;then #if CLA is a username present or not
            count1=$((count1+1))
            continue
        else
            echo $1 is present
            count2=$((count2+1))
        fi
    done
    if [ $count2 -eq 0 ] ;then
        echo "$1 is not present" ;fi
else 
    echo Error: Please pass the argument through command line
fi

