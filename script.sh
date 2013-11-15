#!/bin/bash

#obtain the process ID of an application
#pgrep gedit

#obtain the environment variables associated
#cat /proc/3047/environ
#cat /proc/3047/environ | tr '\0' '\n'

# var=value: this is an assignment operation
# var="value": if the value contains space, put it between double quotes for assignment operation
# var = value: this is an equality operation
# echo $var/${var}: print content of var

#--------------------------------------
fruit=apple
count=5
echo "we have $count ${fruit}(s)"
#--------------------------------------

# finding length of string ---------------------
var=lqizje14283
echo ${#var}
#--------------------------------------
# define used shell --------------------
echo $SHELL
#--------------------------------------

# check for super user: root UID=0 ----------------------
if [ $UID -ne 0 ];then #add space between [ and $UID
echo Non Root User. Please run as root.
else
echo "Root User"
fi
#--------------------------------------

