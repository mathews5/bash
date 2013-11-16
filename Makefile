# $@: represent object name 
# $<: first dependency file name
# @^: all dependency files
# @?: dependency files newer than the object

CC=gcc

# CFLAGS regroup options of compilation for C
# CXXFLAGS for C++
CFLAGS=-Wall

# EXEC content the name of the executable file 
EXEC=hello

all: ${EXEC}

hello: hello.o main.o
	${CC} -o $@ $^

hello.o: hello.c
	${CC} -o $@ -c $< ${CFLAGS}

main.o: main.c hello.h
	${CC} -o $@ -c $< ${CFLAGS}

clean:
	rm -rf *.o
mrproper:clean
	rm -rf ${EXEC}
