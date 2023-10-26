#!/bin/bash

# Script Name:                  Hello World 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/25/2023
# Purpose:                      Variables review 


# Declaration of Variables
num1=25 # variable assigned to num1 is 25.
num2=5

# Declaration of Function (Allows script to be broken down to manageable and reusable pieces)
add_some_numbers() { # Use empty () when defining functions, even if they don't take parameters.
    sum=$(($num1 + $num2))  # Calculate the sum of num1 and num2
    echo $sum  # Print the sum to the console (use $sum to reference the variables)
}

# Main (where the execution begins)
# Call the function
add_some_numbers  # Execute the add_some_numbers function



# End