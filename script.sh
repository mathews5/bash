#!/bin/bash  

#replace of by de, only for the first occurrence, put in the console, donot change the file 
#sed 's/is/est/' sed.txt

# replace the first occurence and save to a new file, replace and save to new file
#sed 's/is/est/' sed.txt > new_sed.txt

# replace the first occurence and save to the same file
#sed -i 's/is/est/' sed.txt

# replace all occurrences of pattern 'g'
#sed 's/is/est/g' sed.txt

# replace from the N-th occurrence
#echo 1this2this3this | sed 's/this/THIS/2g'

# / is a delimiter, we can use any character, :, |

# remove blank line, this command will remove /pattern/d
#sed '/^$/d' blank.txt  

# matched string notation (&), \w\+ matches every word
#echo this is an example | sed 's/ \w\+ /[&]/g'

# variable string in sed expression, note double quotes
text=hello
echo hello world | sed "s/$text/HELLO/"
