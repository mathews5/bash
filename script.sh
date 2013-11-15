#!/bin/bash  

#definiation of function
# function fname()
# {
# statements;
# }

# fname()
# {
# statements;
# }

# invoke function
# fname;
# fname arg1 arg2;

fname()
{
echo $1, $2; #Accessing arg1 and arg2
echo "$@"; # Printing all arguments as list at once
echo "$*"; # Similar to $@, but arguments taken as single entity
return 0; # Return value
}

#cmd;
#echo $?: $? will give the return value of the command cmd
#the return value is 0 if the cmd is successfully executed

CMD="ls"
$CMD
if [ $? -eq 0 ]
then
echo "$CMD executed successfully"
else
echo "$CMD terminated unsuccessfully"
fi

