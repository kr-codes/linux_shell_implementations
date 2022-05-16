#! /bin/bash
<<comment
Name: Karuna R
Date: 15/06/2020
Description: To rename all files in a directory
Input: new name all files in a directory
Output:all files in a directory will be renamed
comment

if [ $# -gt 0 ]
then
    for x in *"DSN"*;do
        mv -- "$x" "${x//DSN/$1}" #replacing DSN with argument
    done

    echo "All .jpg files in current directory is renamed as: "
    echo "day_out_001.jpg day_out_002.jpg  day_out_003.jpg day_out_004.jpg day_out_004.jpg"
else
    echo "Error: Please pass the prefix through command line"
fi

