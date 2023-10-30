#!/bin/bash

# Script Name:                  Arrays 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/30/2023
# Purpose:                      Variables, A, F, W Loop.

#!/bin/bash

# Array to store the grocery list.
grocery_list=("apples" "milk" "bread" "monster")

# Function that is going to check if an item is in the grocery list
grocery_list_checker() {
    local search_item="$1" # the item that I am looking for.

    # "For" loop to go over every item in the list
    for item in "${grocery_list[@]}"; do # @ checks on thing at a time, and * treats the entire array as a single item.
        # Check if the item I am looking for is in my list or not
        if [ "$item" == "$search_item" ]; then
            echo "The item is in your grocery list!"
            return 0 # Meaning that the process succeeded.
        fi
    done
    return 1 # If 1, then failure.
}

# Main

# WHILE Loop
while true; do
    # Ask the user for input of an item to look for in the list
    read -p "Enter an item to check if it's on your grocery list: (Type done to exit.)" item_to_check

    # Check if the user's input is "done"
    if [ "$item_to_check" == "done" ]; then
        break # Exit the loop
    fi

    # Check if the item is in the grocery list
    if grocery_list_checker "$item_to_check"; then
        echo "Item '$item_to_check' is already on your grocery list."
    else 
        # If the item is not on the list, ask the user if they want to add it
        read -p "'$item_to_check' is not on your list, do you want to add it?" add_to_list
        if [ "$add_to_list" == "yes" ]; then
            grocery_list+=("$item_to_check")
            echo "'$item_to_check' was added to your list."
        else
            echo "'$item_to_check' was not added to your list."
        fi
    fi
done

read -p "Are you ready to see your completed grocery list? (yes/no)" show_list
if [ "$show_list" == "yes" ]; then
    echo "Your completed grocery list:"
    for item in "${grocery_list[@]}"; do
        echo "$item"
    done
else
    echo "Ok, you can check your list later."
fi
End