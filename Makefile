# all: regroup all executable files to generate
# clean: delete all intermediate files(.o)
# mrproper: delete all intermediate files and reconstructe the project

CC=gcc

# CFLAGS regroup options of compilation for C
# CXXFLAGS for C++
CFLAGS=-Wall

# EXEC content the name of the executable file 
EXEC=hello

all: ${EXEC}

hello: hello.o main.o
	${CC} -o hello hello.o main.o

hello.o: hello.c
	${CC} -o hello.o -c hello.c ${CFLAGS}

main.o: main.c hello.h
	${CC} -o main.o -c main.c ${CFLAGS}

clean:
	rm -rf *.o
mrproper:clean
	rm -rf ${EXEC}
