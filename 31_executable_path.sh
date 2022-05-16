#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: to display number of executable files in that directory 
Input: none or integer
Output:To display number of executable files in that directory 
comment

count=0
for exec in $(echo $PATH | tr ":" "\n") #replace the : with tab
do
    #echo exec is $exec 
    if [ -x $exec ]  #if the entered exec is executable 
    then
        echo current dir: $exec #path of the executable directory
        echo current count: $count
        count=$(($count+1))
    fi
done
echo Total count - $count

