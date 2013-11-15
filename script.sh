#!/bin/bash  

#cat -s file can squeeze blank lines to one 
#cat -s old.txt > new.txt

#cat old.txt | tr -s '\n' > new_line.txt # remove all blank lines by "TR"

#tab is not same as repeated space, with "-T", cat can highlight tab characters as "^I"
cat -T file.py

#add line number
cat -n file.py > file.txt
