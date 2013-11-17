#!/usr/bin/python

# try:
#    fh = open("testfile", "w")
#    fh.write("This is my test file for exception handling!!")
# except IOError:
#    print "Error: can\'t find file or read data"
# else:
#    print "Written content in the file successfully"
#    fh.close()
# finally:
#    this will always be executed

# raise an exception
# if (condition)
#	raise "exception", level

# try:
#	instruments
# except "exception":
#	instruments
# else:
#	other instruments 

# user-defined exception
# class Networkerr(RuntimeError):
#	def __init__(self, arg):
#	    self.args=arg

# try:
#    raise Networkerr("bad hostname)"
# except Networkerr, e:
# print e.args
