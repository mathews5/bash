#!/bin/bash

# "-" means left alignment, and "5" means width equal to 5,if "-" is not specified, it will be aligned to right.

#character
printf "%-5s %-10s %-4s\n" No Name Mark

#integer
printf "%-5d %-10d %-4d\n" 52 100 854158

#for folat, ".2/.4" limit the width of the decimal place, but does not limit that of before-decimal.
#float
printf "%-5.2f %-2.4f %-2.2f\n" 15,2 24,249312 125,478

#for "c", il will accept only one character/number
#character
printf "%-5c %-3c %-4c\n" abcdefgh qizj5465  5847215
