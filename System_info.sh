#!/bin/bash


# Main

# Search the outputof lshw command and return every line with the word bridge in it. | = Pipe
lshw |grep "bridge"