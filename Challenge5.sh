#!/bin/bash

# Script Name:                  Arrays 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/29/2023
# Purpose:                      Ops Challenge 5 

# Declaration of variables
running_processes="" # This variable will store the list of running processes
pid="" # This variable will store the PID entered by the user

# Declaration of functions

# Function to display the list of running processes
display_processes() {
  running_processes=$(ps aux) # Use the ps command to get the list of running processes
  echo "Running Processes:"
  echo "$running_processes"
}

# Function to kill a specified process
kill_process() {
  read -p "Enter the PID of the process to kill (or Ctrl + C to exit): " pid
  kill -9 $pid # Forcefully terminate the process with the specified PID
}

# Function to ask the user if they want to kill another process
ask_to_kill_again() {
  read -p "Do you want to kill another process? (y/n): " choice
  if [ "$choice" = "n" ]; then
    exit 0 # Exit the script if the user chooses not to kill another process
  fi
}

# Main

# Start a new ping process
ping -c 100 google.com > /dev/null 2>&1 &

while true; do
  display_processes # Call the function to display running processes
  kill_process # Call the function to kill a process
  ask_to_kill_again # Call the function to ask if the user wants to repeat
done

# End

