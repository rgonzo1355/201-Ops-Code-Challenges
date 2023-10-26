#!/bin/bash

# Script Name:                  Hello World 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/26/2023
# Purpose:                      Variables review 


#  Define variables
PRICE_PER_APPLE=5

# Define array
grocery_list=(apple bananas orange onion)

#Print out the entire grocery list
# echo ${grocery_list[*]}

# THS IS  A FUNDAMENTAL IDEA OF COMPUTING
# Print out the first item on the list
echo ${grocery_list[1]}  # Access the first item
echo ${grocery_list[0]}  # Access the second item

# Append a new item to the list
new_snack="monster"
grocery_list+=($new_snack)

# Print the updated list
echo ${grocery_list[-1]}

# End