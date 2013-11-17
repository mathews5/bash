#!/bin/bash  

# grep "match_pattern" filename ... ...
# grep  match_pattern  filename filename1 filename 2 ...
# it gives the line containing match_pattern

# read from stdin
echo -e "this is a word\nnew line" 
echo -e "this is a word\nnew line" | grep word

# highlignt the word in the line --color
grep "inside" grep.txt --color=auto

# print only the matching portion
cat grep.txt | grep -o "inside"  

# print all of the lines except the line containing match_pattern
cat grep.txt | grep -v "inside"

# count number of lines in which a matching string or regex match appears in a file
cat grep.txt | grep -c "inside"

# count the number of matching items in a file
cat grep.txt | grep  "inside" | wc -l

# print the line number of the match string
cat grep.txt | grep -n "inside"  

# print the character offset at which a pattern matches, it counts from 0
echo gun is not unix | grep -b -o "not"

# search over many files and find out in which of the files a certain text matches
#grep -l "match_pattern" file1 file2 file3 ...
#file1
#file2

#recursively search for a text over many directories of descendants
grep "main(" . -R -n

# ignore case sensitive
echo hello world | grep -i -o "HELLO"

# matching multiple patterns
echo this is a line of text | grep -e "this" -e "line" -o 

# matching multiple patterns with a pattern file, add -e to accepte \n
echo -e "this is a line of text, very cool\nnew cool line" | grep -f pat_file

# search only .c and .cpp files
# grep "main()" . -r --include *.{c,cpp}

# exclude files/directory
# grep "main()" . -r --exclude "README"
# grep "main" . -r --exclude-dir "Documents"

