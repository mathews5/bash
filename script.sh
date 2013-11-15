#!/bin/bash
echo Hello World
echo 'Hello World'
echo "Hello World"

echo 'Hello ! World'
echo "Hello ! World"

var=24
echo $var
echo "$var"
#the two first work, but the last one will give the content between ''
#echo '$var'

#"-n" will delete the newline at the end of the output
echo -n Hello 

#print colored output
#"\e[1;31m" sets the color and "\e[0m" sets the color back
echo -e "\e[1;31m This is red text \e[0m"
echo -e "\e[1;31m This is red text, and I don't set it back\nso you will see two red lines and also the following lines in the console"
#line 23 set color back
echo -e "\e[1;0m"

