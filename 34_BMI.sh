#!/bin/bash
<<comment
Name:Karuna R
Date: 15/06/2020
Description: to calculate BMI 
Input: To enter height and weight
Output: Calculate and return BMI
comment

read -p "Enter the weight in Kg: " weight
read -p "Enter the height in meters: " height

bmi=$((weight/($height*$height)))

if [ $bmi -lt 18.5 ]
then
    echo "You are Underweight"
elif [ $bmi -gt 18.5 & -lt 24.9 ]
then
    echo "You are Normal"
elif [ $bmi -gt 25 & -lt 29.9 ]
then
    echo "You are overweight"
elif [ $bmi -eq 30 | -gt 30 ]
then
    echo "You are obese"
fi
