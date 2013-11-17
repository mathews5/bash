#!/bin/bash  

# parse an e-mail address
egrep -o '[A-Za-z0-9.]+@[A-Za-z0-9.]+\.[a-zA-Z]{2,4}' email.txt
