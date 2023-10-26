#!/bin/bash

# Script Name: Challenge - Functions
# Author: Rodolfo Gonzalez
# Date of latest revision: 10/25/2023
# Purpose: Print the login history of users on this computer, followed by the text "This is the login history"

# Declaration of variables
login_history_intro="User Login History:"
process_status="Processing login history..."

# Declaration of functions
function print_login_history() {
  local username="$1"
  echo "$login_history_intro for user $username"
  last -f /var/log/auth.log | grep "$username"
  echo "This is the login history"
}

# Main

echo "$process_status"

# Call the function three times with different arguments
print_login_history rgonz
print_login_history Guest
print_login_history g911r

# End

