#!/bin/bash

# Script Name:                  Hello World 
# Author:                       Rodolfo Gonzalez
# Date of latest revision:      10/25/2023
# Purpose:                      Learn all about variables 
# Lesson:                       Computer are dumb
# Declaration of variables

# PRICE OF APPLES
# One equal sign means assingning value
# Two equal signs is comparing value
# Red letter are the variable name that I am go8ing to call later and the value is 5


PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hellow World'  # < All of these are called GLOBAL VARIABLES
FILES=`ls`
WHO=`whoami`


# Declaration of functions
#GUNCTION = Reusable piece of code
# Basic function that handles printing the greeting to the screen
print_greeting (){
    echo "HELLO WORLD"
    echo "This is our first function"
    echo "The person running this script is $WHO"
}

# Main

# Call the funtion - Tell the computer to DO
print_greeting

print_greeting

# This prints out teh greeting variable
# echo_greeting
# echo "The price of an apple today is: $PRICE_PER_APPLE"
# echo "The first ten letters of the alphabet are: ${MyFirstLetters}DEFGHIJ"
# echo "The folder contains the following $FILES"
# echo "The person running this script is $who"


# End