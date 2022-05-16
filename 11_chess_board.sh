#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: To print a chess board
Input: -
Output: Chess board pattern
comment

#enter the number of rows and columns of chess board
rows=8
columns=8

for row in `seq 1 $rows` #for rows 1 to 8
do
    if [ $(($row%2)) == 1 ] #odd row
    then
        for column in `seq 1 $columns` #for columns 1 to 8
        do
            if [ $(($column%2)) != 1 ] #even column
            then
                echo -e -n "\e[40m" " " #odd row even column =black box
            else 
                echo -e -n "\e[47m" " " # odd row odd column = white box
            fi
        done
        echo -e -n "\e[0m" " " #to print nothing after end of each line
    else #even row
       echo 
        for column in `seq 1 $columns` #columns 1 to 8
        do
            if [ $(($column%2)) != 1 ] #even column
            then
                echo -e -n "\e[47m" " " #even row even column = white box
            else 
                echo -e -n "\e[40m" " " #even row odd column = black box
            fi
        done
        echo -e -n "\e[0m" " "
        echo
    fi
done



   
