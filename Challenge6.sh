#!/bin/bash

# Script Name       Challenge6
# Author         Rodolfo Gonzalez
# Date          10/30/2023
# Purpose         Conditionals

# **Declaration of Variables**
# The `paths` array stores the paths to the files and directories that you want to create.
paths=()

# **Main**
while true; do
 # Prompt the user for the path to the file or directory
 read -p "Enter the path to the file or directory (or 'q' to quit): " path

 # Check if the user wants to quit
 if [[ "$path" == "q" ]]; then
  break
 fi

 # Add the path to the `paths` array
 paths+=("$path")
done

# Iterate over the `paths` array and create each file or directory if it does not already exist.
for path in "${paths[@]}"; do
 # Check if the file or directory exists
 # If the file or directory does not exist, prompt the user for confirmation before creating it.
 if [[ ! -e "$path" ]]; then
  # Prompt the user for confirmation before creating it
  read -p "Do you want to create $path? (y/n) " response

  # If the user enters "y" or "Y", create the file or directory
  if [[ "$response" == "y" ]] || [[ "$response" == "Y" ]]; then
   # Create the file or directory
   if [[ -f "$path" ]]; then
    touch "$path"
   else
    mkdir -p "$path"
   fi
  fi
 fi
done
