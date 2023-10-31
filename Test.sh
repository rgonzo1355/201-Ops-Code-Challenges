#!/bin/bash

# Script name           ChallengeTest
# Author                Rodolfo Gonzalez
# Date                  10/31/2023

# Declaration of Variables

# Requirements
# Create a script that detects if a file or directory exist, then creates it if doe not exist.
# Your script must use at least one array, on leep, and one doncitional.
# Declare an array
files=(file1.txt file2.txt file3.tst files4.txt)

# For loop - Do action for each file in the list    
for file in "${files[@]}"
do
    # Conditional - to check if file exist. The action in loop.
    if [ -f "$file" ]; then
    # If file exist then print out a statement telling the user that the file exist.
    echo "$file exist."

     # Else statement - to catch all other situations.
    else   
     # Tell userd file does not exist
    echo "$file does not exist."
    # Ask the user if they want to create it
    touch $file
    echo "The $file has been created."
    fi
    
# Close out the foor loop
done