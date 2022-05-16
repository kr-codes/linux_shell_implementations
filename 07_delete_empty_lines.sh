#! /bin/bash

<<comment
Name: Karuna R
Date: 05/06/2020
Description: To delete empty line from a file
Input: the filename by ls
Output: filenames changed from lower to uppercase and viceversa
comment

if [ $# -gt 0 ]
then
		if [ -f $1 ] # to check if the file exists
		then
				sed -i '/^$/d' $1
				echo "Empty files are deleted"
		else
				echo "Error: The file entered doesn't exist"
		fi
else
		echo "Error: Please pass the file name through command line"
fi
