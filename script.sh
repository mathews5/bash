#!/bin/bash
# < is an operator used to read from the file stdin
# > is an operator used to write to a file with truncation
# >> is an operator used to write a file with append

echo this is a test line > input.txt
#create a file descriptor for reading a file
exec 3<input.txt
cat <&3
#if a second read is needed, another file descriptor must be created before usage

exec 4>output.txt
exec 5>>error.txt

