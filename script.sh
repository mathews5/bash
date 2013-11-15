#!/bin/bash  

# read -n number_of_chars variable_name
# this command will read n characters from input into the variable variable_name

#IFS: Internal Field Separator: an environment variable that stores delimiting characters.
#CSV: Comma Separated Values

data="name,sex,rollno,location"
#To read each of the item in a variable, we can use IFS.
oldIFS=$IFS
IFS=,
for item in $data;
do
echo Item: $item
done
IFS=$oldIFS


line="root:x:0:0:root:/root:/bin/bash"
oldIFS=$IFS;
IFS=":"
count=0
for item in $line;
do
[ $count -eq 0 ] && user=$item;
[ $count -eq 6 ] && shell=$item
let count++
done;
IFS=$oldIFS
echo $user\'s shell is $shell;

x=0;
until [ $x -eq 9 ]; # [ $x -eq 9 ] is the condition
do let x++; echo $x;
done

