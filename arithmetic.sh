#!/bin/bash

# Question : We provide you with expressions containing +,-,*,^, / and parenthesis. None of the numbers in the expression involved will exceed . 
# Your task is to evaluate the expression and display the output correct to  decimal places.
# Sample input   : 5+50*3/20 + (19*2)/7
# Sample output  : 17.929

# Sample input   : -105+50*3/20 + (19^2)/7
# Sample output  : -45.929

read expr

# bc is allowing us to calculate floating numbers correctly
# calculate expression with bc and round it to 3 decimals with printf
printf "%.3f\n" `echo "$expr" | bc -l`

# echo  "scale=3; $expr" | bc -l 
# above line is not working as expected since it is not rounding the floating number.

