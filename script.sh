#!/bin/bash  

# [ condition ] && action; action executes if condition is true
# [ condition ] || action; action executes if condition is false

# [ $var -eq 0 ]; it returns true when $var equal to 0
# [ $var -nq 0 ]; it returns true when $var not equals 0
# -gt: greater than
# -lt: less than
# -ge: greater than or equal to
# -le: less than or equal to

# Multiple conditions------------------------------
# [ $var1 -ne 0 -a $var2 -gt 2]; using AND -a
# [ $var1 -ne 0 -o var2 -gt 2]; using OR -o

#Filesystem related tests
# [ -f $file_var ] return true if the given variable holds a regular filepath or filename

# [ -x $var ] return true if the given variable holds a file path or filename which is executable

var="script.sh"
if [ -x $var ]; then
echo $var
fi

# [ -d $var ] return true if the given variable holds a directory path or directory name

#[ -e $var ] return true if the given variable holds an existing file

#[ -c $var ] return true if the given variable holds path of a character device file

#[ -b $var ] return true if the given variable holds path of a block device file

#[ -w $var ] return true if the given variable holds path of a file which is writable

#[ -r $var ] return true if the given variable holds path of a file which is readable

#[ -L $var ] return true if the given variable holds path of a symlink

# String comparision -------------------------------
# [[ $str1 = $str2 ]] return true when str1 equals str2
# [[ $str1 == $str2 ]] 

# [[ $str1 != $str2 ]] return true when str1 and str2 mismatches

# [[ -z $str1 ]] return true if str1 holds an empty string
# [[ -n $str1 ]] return true if str1 holds a non-empty string

# if [[ -n $str1 ]] && [[ -z $str2 ]];
# then
# commands
# fi

# command test could be used for the test command
# if [ $var -eq 0]; then echo " True "; fi
# equal: if test $var -eq 0; then echo "True"; fi
