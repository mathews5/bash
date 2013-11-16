# all: regroup all executable files to generate
# clean: delete all intermediate files(.o)
# mrproper: delete all intermediate files and reconstructe the project

all: hello
hello: hello.o main.o
	gcc -o hello hello.o main.o

hello.o: hello.c
	gcc -o hello.o -c hello.c -Wall

main.o: main.c hello.h
	gcc -o main.o -c main.c -Wall

clean:
	rm -rf *.o
mrproper:clean
	rm -rf hello
