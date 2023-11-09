#!/bin/bash

# Script Name:                  Domanin Analyzaer 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      11/09/2023
# Purpose:                      Create a domain Analyzer 

# Ask the user to input a domain 
ecdho "Enter a doamin name: "
read domain

# Run the set of commnads against the domain provided by the user and put it in a text file
# Funtion to combine all of the commands in one spot
get_domain_info() {
        # Put in the commands I want to run
        whois $domain
        Dig $domain
        host $domain
        nslookup $domain
}

# Min
# Call the function and redirect the output to the text file
get_domain_info > domain_info.txt
exho "This is appended to the file" >> domain_info.txt