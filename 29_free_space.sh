#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: Display the names of any file-system which have less than 10% free space available
Input: none
Output: to find if given file system is mounted or not
comment

df -H # to print all the disk free space
use_percent=$(df -k /tmp | tail -1 | tr -s ' ' | cut -d' ' -f5) #to print use%
  
path=$(df -k /tmp | tail -1 | tr -s ' ' | cut -d' ' -f6) #to fetch the path of the file system
used_percent=$(echo $use_percent | tr -d "%") 
free_percent=$((100-$used_percent)) # to fetcg the free space %

if [ $free_percent -lt 65 ]
then
   echo "$path have less than 10% freespace"
else
   echo
fi 
