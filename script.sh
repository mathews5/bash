#!/bin/bash  

# LZMA most powerful compression tool



# GZIP
# gzip file: compress
# gunzip file.gz: extract, il will delete gzip.gz
# gzip -l file.gz: list out the properties of a compressed file

# tar -czvvf archive.tar.gz [files] : create directly gz archive
# compress:tar -cf output.tar [files] 
# append to archive: tar -rvf output.tar new_file
# list files inside: tar -tf archive.tar
# print detail of files: tar -tvvf archive.tar

# extract: tar -xf archive.tar   x: extract  f:specify
# extract specified files: tar -xvf archive.tar file1 

# BZIP: create smaller archive than gzip
# bzip2 filename
# bunzip2 file.bz2
# tar -cavvf archive.tar.bz2 [files]

# keep input files: -k
# bunzip2 test.bz2 -k
