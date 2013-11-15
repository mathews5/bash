#!/bin/bash  

# bash -x script.sh/ sh -x script.sh : run script and print each source line with current status
#set -x: display arguments and commands upon their execution
#set +x: disable debugging
#set -v: display input when they are read
#set +v: disabler  

# the following code will only print value of I
for i in {1..6}
do
set -x
echo $i
set +x
done
echo "Script executed"

#we can run the following code with debugging set to "on"
#_DEBUG=on ./script.sh
function DEBUG()
{
[ "$_DEBUG" == "on" ] && $@ || :
}
for i in {1..10}
do
DEBUG echo $i
done


