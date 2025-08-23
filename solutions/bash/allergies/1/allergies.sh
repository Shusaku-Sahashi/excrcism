#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***

SCORE=$1
ALLERGIC=$3

case $ALLERGIC in
    "eggs") 
        ((SCORE-=1));;
    "peanuts")
        ((SCORE-=2));;
    "shellfish")
        ((SCORE-=4));;
    "strawberries")
        ((SCORE-=8));;
    "tomatoes")
        ((SCORE-=16));;
    "chocolate")
        ((SCORE-=32));;
    "pollen")
        ((SCORE-=64));;
    "cats")
        ((SCORE-=128))
esac

if (($SCORE==0)); then
    echo "true"
else
    echo "false"
fi