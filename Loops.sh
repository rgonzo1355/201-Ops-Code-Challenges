#!/bin/bash

# Script Name:                  Hello World 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/27/2023
# Purpose:                      VLearn about Loops! 


# Define an array
names=("Bob" "Jane" "Mike" "Sarah")
COUNT=4

# IF OR LOOP
# Basic syntax
# for person in ${names[@]} # For each name every single (item on the list) I want you to do
# do # do
# echo $person # this echo
# done # done

# WHILE 
# basic syntax
while [ $COUNT -gt 0 ]; do
person="Mike"
echo "Value of count is: $COUNT"
# COUNT=$(($COUNT -1))


echo "The condition is no longer true, we broke out of the while loop!"

# Main
