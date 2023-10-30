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
echo ${grocery_list[0]}  # Access the first item
echo ${grocery_list[1]}  # Access the second item

# Use the pound sign in front of the array name give me the count of items in my list
echo ${#grocery_list[*]}

# Append a new item to the list
new_snack="monster" #The "" are optional
# grocery_list+=($new_snack) # () Puts it in its own bucket and in the list.
#grocery_list[1]="monster"
grocery_list=("apple" "$new_snack" "bananas" "orange" "onion")  # Make "monster" the 2nd item and shift the others
# add monster as the second item in the list: grocery_list[1]
# add monster as the second item and shift everything: grocery_list[1]="monster"

# Print the updated list
echo ${grocery_list[-1]}

# End 