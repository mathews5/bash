hello: hello.o main.o
	gcc -o hello hello.o main.o

hello.o: hello.c
	gcc -o hello.o -c hello.c -Wall

main.o: main.c hello.h
	gcc -o main.o -c main.c -Wall
