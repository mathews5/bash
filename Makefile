# $@: represent object name 
# $<: first dependency file name
# $^: all dependency files
# $?: dependency files newer than the object

CC=gcc

# CFLAGS regroup options of compilation for C
# CXXFLAGS for C++
CFLAGS=-Wall

# EXEC content the name of the executable file 
EXEC=hello

# SRC content source files of project
#SRC=hello.c main.c
SRC=$(wildcard *.c)

# OBJ content object files
OBJ=$(SRC:.c=.o)

all: ${EXEC}

hello: ${OBJ}
	${CC} -o $@ $^

#hello.o: hello.c
#	${CC} -o $@ -c $< ${CFLAGS}
#main.o: main.c hello.h
#	${CC} -o $@ -c $< ${CFLAGS}
# replace by %.o: %.c
%.o: %.c
	${CC} -o $@ -c $< ${CFLAGS}

# .PHONY follewed by some out-of-date target, so make <PHONY target> will run even if there is a file named "clean"
.PHONY: clean mrproper

clean:
	rm -rf *.o
mrproper:clean
	rm -rf ${EXEC}
