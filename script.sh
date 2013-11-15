#!/bin/bash  

# find . -print # print out all files at present position

# -name specifies a matching string for the filename
# find /home/mingzhao -name "*.txt" -print  
# -iname ignore the case
# find /home/mingzhao -iname "*.txt" -print  

# -o OR condition to combine multiple criterions \( and )\ is used to treat the content as a single unit
#find . \( -name "*.txt" -o -name "*.pdf" \) 

#-path will match the file path for files that match the wildcards
#find /home/mingzhao -path "*.txt"
#will give files 
#/home/mingzhao/Document/*.txt
#/home/mingzhao/*.txt
#/home/mingzhao/Music/chine/*.txt

#find . ! -name "*.txt" # this command find the files who doesnot end with .txt

find . -maxdepth 1 -type f # print files at level 1 location(present location)
find . -mindepth 2 -type f # print files at least 2 levels away frompresent location

find . -type d # list only directories including descendants
find . -type f # list only regular files
find . -type l # list symbolic links

find . -type f -atime -7 # all files that were accessed within the past 7 days
find . -type f -atime +7 # all files that were accessed older than 7 days
find . -type f -size +2k # files greater than 2 kb
find . -type f -size -2k # files smaller than 2 kb
# b:512 byte; c:byte; w:2 byte word; k/M/G

#find . -type f -name "*.swp" -delete #delete all .swp file at the present directory 

#{} will be replaced by the file found by "find"
#find . -type f -user root -exec chown mingzhao {} \

#copy files to Documents
#find . -type f -mtime +10 -name "*.txt" -exec cp {} Documents \
