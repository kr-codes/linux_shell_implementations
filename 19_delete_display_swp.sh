#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To delete all the .swp files 
Input: none
Output: delete all .swp files
comment

find . -type f -name "*.swp" -delete 
# to find all .swp files in current directory and delete
