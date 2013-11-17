#!/bin/bash  

# AWK is a tool designed to work with data streams. It is very interesting as it can operate on columns and rows.
# awk '/" BEGIN{ commands} pattern{commands} END {commands} '/" file

# when the arguments of print are separated by commas, they are printed with a space delimiter.double quotes are used in the context of print. 
echo | awk '{ var1="v1"; var2="v2"; var3="v3"; print var1, var2, var3;}'
