#!/bin/bash

# Script Name:                  Hello World 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/25/2023
# Purpose:                      Variables review 


#  Declaration of Variables
num1=25
num2=5


#  Declaration funtion
add_some_numbers() {
    sum=$(($num1 + $num2))
    echo $sum
}

# Main
# Call the function 
add_some_numbers


# End