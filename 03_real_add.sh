#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: To add two numbers also use bc and piping
Input: two real numbers
Output: sum of two real numbers
comment

read -p "Enter two numbers: " number1 number2

sum=` echo $number1+$number2 | bc` #add two numbers push to calculator 
echo $sum #print the sum
   
