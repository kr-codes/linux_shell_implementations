#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: To generate random 8 character password icluding alpha-numeric characters
Input: none
Output: random 8 character password to be generated
comment

for i in `seq 0 9` # to generate 10 passwords on each execution
do
<<comment1
-fetch random values from urandom file
-translate and delete non pritanbles
-generate for 8 characters only
comment1
echo $(cat /dev/urandom | tr -cd [:print:] | head -c8) 
done
#| cut -c 1-8)
