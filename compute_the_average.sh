#!/bin/bash

# Q :  Given  integers, compute their average correct to three decimal places.
# Explanation : Explanation The '4' in the first line indicates that there are four integers whose average is to be computed. 
# The average = (1 + 2 + 9 + 8)/4 = 20/4 = 5.000 (correct to three decimal places) Please include the zeroes even if they are redundant (e.g. 0.000 instead of 0).

# Get number of elements to process
read numbers
sum=0

# for num in {1..$numbers} is not working since brace-expansion occurs before parameter expansion per feedback on https://unix.stackexchange.com/a/88217
for i in `seq 1 $numbers`
do
	read num
	# remember double pharentesis is used for arithmetic operations
	((sum+=num))
done

# we are using bc for floating results on division and printf for rounding the result 3 decimals
printf "%.3f\n" `echo "$sum/$numbers" | bc -l`
