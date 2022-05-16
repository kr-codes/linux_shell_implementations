#! /bin/bash

<<comment
Name: Karuna R
Date: 05/06/2020
Description: To change filename from lower to upper and vice versa
Input: the filename by ls
Output: filenames changed from lower to uppercase and viceversa
comment

echo -n $(ls -p | grep -v / | tr [:upper:] [:lower:]) " " # ls -v to append directory with / and grep -v / to grep everything without / so to list only files

echo $(ls -p | grep / | tr [:lower:] [:upper:]) #to list only directries

