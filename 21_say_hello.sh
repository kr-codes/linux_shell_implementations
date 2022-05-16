#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To add greetings based on timings
Input: none
Output: To display timings based on timings
comment

#add below line to ~/.bashrc file by vim
# bash /home/karuna/ECEP/LS/assignments/21_say_hello.sh

hour=$(date +%H) # to extract only Hour from time
if [[ $hour -ge 5 && $hour -le 12 ]];
then
    echo "Good morning user, Have a nice day"
elif [[ $hour -gt 12 && $hour -le 13 ]]; 
then
    echo "Good noon user"
elif [[ $hour -ge 14 && $hour -lt 17 ]];
then
    echo "Good afternoon user"
elif [[ $hour -ge 17 && $hour -le 21 ]];
then
    echo "Good evening user"
elif [[ $hour -gt 21 && $hour -le 5 ]]; 
then
    echo "Good night"
fi
echo This is $(date)
