#!/bin/bash

# Script Name:                  Arrays 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/30/2023
# Purpose:                      Ops Challenge 5b Solution

# Requirements:
# Write a script that displays running processes, asks the user for a PID< then kills the process with that PID.
# Use a loop in your script.

# Declare Variables
option="y"

# Main

# While Loop
while [ "$option" == "y" ]  # used double brackets and "$" for variable interpolation
do
    # Instructions for the while loop to execute
    ps aux # Prints out processes.

    # Ask the user for a process ID
    echo -e "\nPlease give the PID of the process you would like to kill:"

    # Read in the input the user provided
    read pid

    # Kill the process using the PID the user gave us
    kill -9 "$pid"  # Enclosed $pid in double quotes

    # Ask the user if they want to kill another process or exit the script
    echo -e "\nDo you want to kill another process? (y to continue / any other key to stop)"  # -e is so that it does not take the \ literral, and print on the next line instead.

    # Read in the input the user provided and put it in a variable called option
    read option
done
