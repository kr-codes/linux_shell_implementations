#! /bin/bash

<<comment
Name: Karuna R
Date: 13/06/2020
Description: Perform airthmetic operation on digits of a given number
Input:String from user ending with operator
Output: Result based on the entered operator
comment

if [ $# -gt 0 ] # to check if the argument is passed
then
    num=$1 
    operator_index=`expr ${#num} - 1` # to fetch the operator's index using offset
    operator=${num:operator_index:1}  # to fetch the operator using offset
    len_num=`expr $operator_index - 1` # to fetch the digits of the number
    result=${num:0:1} #1st digit of number is saved to result

    for i in `seq 1 $len_num` #for loop to run for length of the number
    do
        case $operator in
            +)
                num1=${num:i:1} #fetching the other digits of the number
                result=`expr $result + $num1` #finding result based on operator
                ;;
            -)
                num1=${num:i:1}
                result=`expr $result - $num1`
                ;;
            \*)
                num1=${num:i:1}
                result=`expr $result \* $num1`
                ;;
            *)
                echo Error: Operator missing
                ;;
        esac
    done
    echo result is $result
else
    echo Error: Please pass the argument.
    echo Usage: ./08_operator.sh 2345+
fi



