#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To display the longest and shortest usernames on the system
Input: none
Output: to print longest and shortest usernames
comment

MAX_LEN=0
MIN_LEN=100

for user in $(cut -f1 -d: /etc/passwd) # to find all the usernames
do
    if [[ ${#user} -gt MAX_LEN ]] #collecting the maximum length username
    then
        MAX_LEN=${#user}
        MAX_LEN_USERNAME=$user
    elif [[ ${#user} -lt MIN_LEN ]] #to collect minimum length username
    then
        MIN_LEN=${#user}
        MIN_LEN_USERNAME=$user
    fi
done

echo “The longest name is:  $MAX_LEN_USERNAME”
echo “The shortest name is:  $MIN_LEN_USERNAME”
