#!/bin/bash
array_var=(1 2 3.4 4)
echo ${array_var[2]}
array_var[5]=5
echo ${array_var[5]}
array_var[6]=A
echo ${array_var[6]}

# print all contenues -----------
echo ${array_var[*]}
echo ${array_var[@]}
echo ${#array_var[*]}

# associative array
declare -A fruit_value

fruit_value=([apple]='100 dollars' [orange]='150 dollars')
echo "Apple costs ${fruit_value[apple]}"

# change the order
echo ${!fruit_value[*]}
