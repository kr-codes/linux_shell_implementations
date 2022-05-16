#! /bin/bash

<<comment
Name: Karuna R
Date: 01/06/2020
Description: To find the system related information
Input: Option number
Output: User's choice for system info
comment
#displays all the options to the user
echo "
      1. Currently logged users
      2. Your shell directory
      3. Home directory
      4. OS name & version
      5. Current working directory
      6. Number of users logged in
      7. Show all available shells in your system
      8. Hard disk information
      9. CPU information.
      10. Memory information.
      11. File system information.
      12. Currently running process.
                                     "

echo -n "Enter the choice: " 
read option #reads the input from user
case $option in #based on the options the system info gets executed
    1) echo "Currently logged users: " $USER
        ;;
    2) echo "Your shell directory is: " $SHELL
        ;;        
    3) echo  "Home directory is: " $HOME
       ;;
    4) echo  "OS name & version is " 
       uname -a
        ;;
    5) echo  "Current working directory is: " 
       pwd
       ;;
    6) echo  "Number of users logged in: "  
        w
       ;;
    7) echo  "All available shells in your system: "
        cat /etc/shells
       ;;
    8) echo  "Hard disk info is: " 
        free -h
        ;;
    9) echo  "CPU info is: " 
        cat /proc/cpuinfo
        ;;
    10) echo  "Memory info is: " 
        cat /proc/meminfo
        ;;
    11) echo  "File system info is: " 
       df
        ;;
    12) echo  "Currently running process is: " 
       ps
        ;;
    *) echo invalid option #this gets executed if invalid option is executed
esac
   
