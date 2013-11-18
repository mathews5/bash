#!/usr/bin/python
import os

try:
    positionString = os.getcwd()
    print "\t", positionString
    commandChoosen=raw_input(
            "Choose the operation:\n\
            1: create a new direcotory\n\
            2: list all the directory\n\
            3: rename a chosen directory\n\
            4: delete a chosen directory\n")
    if commandChoosen == "1":
            # new_dir=positionString+"/new"  
            # print new_dir
            os.mkdir(positionString + "/new")
    elif commandChoosen == "2":
            print os.listdir(positionString)
    elif commandChoosen == "3":
            oldName=raw_input("Choose the directory to change name\n")
            newName=raw_input("Enter new name of the directory\n")
            os.rename(oldName,newName)
            print os.listdir(positionString)
    elif commandChoosen == "4":
            print os.listdir(positionString)
            delDir=raw_input("enter the directory to delete\n")
            os.rmdir(delDir)       
            print os.listdir(positionString)
except:
    print "There was a problem"     
