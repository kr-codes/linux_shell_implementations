#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description:To count the number of user IDs b/w 500 and 10000 on system  
Input: none or integer
Output: no of user ID in mentioned range
comment

#to fetch the 3rd field = User ID in etc/passwd folder
user_id=$(cut -d: -f3 /etc/passwd)
count=0

if [ $# -gt 0 ]
then
    lowest_limit=$1
    highest_limit=$2
else
    lowest_limit=500
    highest_limit=100000
fi

for value in $user_id
do
    if [ $value -gt $lowest_limit ] && [ $value -lt $highest_limit ] 
    then
        count=$((count+1))
    fi
done
echo "Total count of User ID b/w $lowest_limit to $highest_limit is: $count"


