#!/bin/bash

# Script Name     Challenge6
# Author          Rodolfo Gonzalez
# Date            11/08/2023
# Purpose         Create system information overview.   

# Declaration of Variables
# ------------------------ (Separating different sections or functions.)

# Declare two variables:
# lshw_output: To store the output of the lshw command.
# lshw_output_filtered: To store the filtered version of the lshw output.
lshw_output=""
lshw_output_filtered=""

# Main
# ----

# Define the main function, which is the entry point for the script.
main() {

    # Get system information using lshw.
    # The lshw command displays detailed information about the hardware components of a system.
    lshw_output=$(sudo lshw -short)

    # Remove irrelevant information from the lshw output.
    # The grep command is used to search for and extract text from files or streams.
    # The regular expression `[CPU|RAM|Display adapter|Network adapter]` matches any line that contains the text "CPU", "RAM", "Display adapter", or "Network adapter".
    lshw_output_filtered=$(grep -E "[CPU|RAM|Display adapter|Network adapter]" <<< "$lshw_output")

    # Add text to the output clearly indicating which component the script is returning information about.
    echo "## System Information"
    echo ""
    echo "**CPU**"
    # Print the product, vendor, physical ID, and bus info for the CPU.
    echo "Product: $(echo "$lshw_output_filtered" | grep -E "CPU" | awk '{print $2}')"
    echo "Vendor: $(echo "$lshw_output_filtered" | grep -E "CPU" | awk '{print $3}')"
    echo "Physical ID: $(echo "$lshw_output_filtered" | grep -E "CPU" | awk '{print $4}')"
    echo "Bus info: $(echo "$lshw_output_filtered" | grep -E "CPU" | awk '{print $6}')"
    echo ""
    echo "**RAM**"
    # Print the description, physical ID, and size for the RAM.
    echo "Description: $(echo "$lshw_output_filtered" | grep -E "RAM" | awk '{print $1}')"
    echo "Physical ID: $(echo "$lshw_output_filtered" | grep -E "RAM" | awk '{print $2}')"
    echo "Size: $(echo "$lshw_output_filtered" | grep -E "RAM" | awk '{print $3}')"
    echo ""
    echo "**Display adapter**"
    # Print the description, product, vendor, physical ID, bus info, width, clock, capabilities, configuration, and resources for the display adapter.
    echo "Description: $(echo "$lshw_output_filtered" | grep -E "Display adapter" | awk '{print $1}')"
    echo "Product: $(echo "$lshw_output_filtered" | grep -E "Display adapter" | awk '{print $2}')"
    echo "Vendor: $(echo "$lshw_output_filtered" | grep -E "Display adapter" | awk '{print $3}')"
    echo "Physical ID: $(echo "$lshw_output_filtered" | grep -E "Display adapter" | awk '{print $4}')"
    echo "Bus info: $(echo "$lshw_output_filtered" | grep -E "Display adapter" | awk '{print $6}')"
    echo ""
    echo "**Network adapter**"
    # Print the description, product, vendor, physical ID, bus info, logical name, version, serial, size, capacity, width, clock, capabilities, configuration, and resources for the network adapter.
    echo "Description: $(echo "$lshw_output_filtered" | grep -E "Network adapter" | awk '{print $1}')"
    echo "Product: $(echo "$lshw_output_filtered" | grep -E "Network adapter" | awk '{print $2}')"
    echo "Vendor: $(echo "$lshw_output_filtered" | grep -E "Network adapter" | awk '{print $3}')"
    echo "Physical ID: $(echo "$lshw_output_filtered" | grep -E "Network adapter" | awk '{print $4}')"
    echo "Bus info: $(echo "$lshw_output_filtered" | grep -E "Network adapter" | awk '{print $6}')"
}

# Call the main function.
main



