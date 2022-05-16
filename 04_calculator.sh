#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: Calculator program
Input: any positive numbers and opertaor
Output: Addition or  subtracrion etc based on the choice of the user
comment

if [ $# -gt 0 ] # to check if there are Command line arguments
then 
    if [ $# -gt 2 ] # to check if atleast 3 Command line arguments are present
    then
    case $2 in #using switch case:second command argument as variable
        # calculations on first and third arguments 
        +)
            echo `expr $1 + $3` # addition
            ;; 
        -)
            echo `expr $1 - $3` # subtraction
            ;;
        x)
            echo `expr $1 \* $3` # multiplication
            ;;
        /)
            echo `expr $1 / $3` # division
            ;;
        %)
            echo `expr $1 % $3` # division
            ;;
        *)
            echo "Error: Invalid option"
    esac
    else
        echo Error Please pass 3 arguments
        echo Usage: ./04_calculator.sh 2.3 + 6.7
    fi
else
    echo  Error: Please pass the argumnets through command line
fi

   
