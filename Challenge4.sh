#!/bin/bash

# Script Name:                  Hello World 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/26/2023
# Purpose:                      Ops Challenge 4 Arrays 

# Declaration of Variables
# Define the names of the directories and store them in an array
directories=("dir1" "dir2" "dir3" "dir4")

# Declaration of Functions
# Function to create directories and .txt files
create_directories_and_files() {
    # Loop through the array and create a new .txt file in each directory
    for dir in "${directories[@]}"; do
        mkdir "$dir" # Create a directory
        touch "$dir/$dir.txt" # Create a new .txt file in the directory
        echo "Created $dir/$dir.txt" # Print a message to confirm file creation 
    done # Close the create_directories_and_files function, this keep giving me problems I had forgot to put it here.
}

# Main
# Create the directories and files
create_directories_and_files

# Test & validate
echo "Directories and files created:"
ls -R ./ # List the created directories and files recursively
