#!/bin/bash

#file descriptors are integers that are associated with file input and output. the best-known file descriptors are stdin(0), stdout(1) and stderr(2).

#redirect or save output text to a file
echo "This is a sample text 1" > temp.txt
#the contents will be cleared before writing into it
echo " This is another sample text" >> temp.txt
#this command will append the new text at the end of file

#ls + 2>out.txt #store message into file out.txt

#ls + 2>stderr.txt 1>stdout.txt #store message into two files
#ls + 2>&1 out.txt #store error message to output file

# TEE make the copy of former command result to the next command
#cat out.txt | tee kn.txt | cat -n

# tee -a put the new content at the end of file
#cat out.txt | tee -a kn.txt | cat -n

#between line 23 and line 27(EOF) will appear as stdin data.
cat <<EOF >log.txt
LOG FILE HEADER
This is a test log file
Function:System statistics
EOF
