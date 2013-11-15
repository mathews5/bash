#!/bin/bash
no1=4
no2=5
# let and "[]" have the same function, attention space 
#let result=no1+no2

result=$[ no1 + no2 ]
echo $result

# (()) can also be used

result=$(( no1 + 40 ))
echo $result

result=$(expr $no1 + 5)
echo $result
#-----------------------------------
# all above are only for integer, not float
#----------------------------------

echo " 4 * 0.34 " | bc
no=40
result=`echo "$no * 1.4" | bc`
echo $result

# 4 decides the length of decimal place
echo "scale=4;3/8" | bc

# base conversion with BC
no=100
echo "obase=2;$no" | bc

# scquare and square root
echo "sqrt(100)" | bc
echo "10 ^ 10" | bc

