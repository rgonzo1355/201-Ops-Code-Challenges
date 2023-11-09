#!/bin/bash

# Script Name:                  Domanin Analyzaer 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      11/08/2023
# Purpose:                      Create a domain Analyzer 


# Make sure to install the command whois
# sudo apt-get update
# sudo apt-get install whois
# chmod +x domain_analyzer.sh

# Declaration of variables
editor="nano"
output_dir="./domain_info"  # Directory to store domain information files

# Function to gather domain information
gather_domain_info() {
    domain="$1"

    # Create the output directory if it doesn't exist
    mkdir -p "$output_dir"

    # Run whois and save the output to a text file in the output directory
    whois "$domain" > "$output_dir/$domain.txt"

    # Run dig and append the output to the text file
    dig "$domain" >> "$output_dir/$domain.txt"

    # Run host and append the output to the text file
    host "$domain" >> "$output_dir/$domain.txt"

    # Run nslookup and append the output to the text file
    nslookup "$domain" >> "$output_dir/$domain.txt"

    echo "Domain information gathered and saved to $output_dir/$domain.txt"
}

# Main script
clear
echo "Domain Analyzer"

# Get user input for the domain
read -p "Enter a domain name (e.g., example.com): " user_input_domain

# Call the gather_domain_info function with the user's input
gather_domain_info "$user_input_domain"

# Open the results in the Nano text editor
"$editor" "$output_dir/$user_input_domain.txt"
