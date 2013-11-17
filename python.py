#!/usr/bin/python

# def function_name( parameters ):
#    instruments
#    return [expression]

def printname( str ):
    print str;
    return;

printname(" I'm good!");

total=0 # global variable

# variable-length arguments
def printinfo( arg1, *vartuple ):
    print "output is:"
    print arg1
    for var in vartuple:
	print var
    return;

printinfo(10);

sum = lambda arg1, arg2: arg1 + arg2;

print sum(20, 30);
