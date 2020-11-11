CC = g++
Cflag = -c -Wall 


make mymaths:
	$(CC) $(Cflag) libmyMath.a -o libmyMath.o

make mymathd:



make maind:


make all:

main.o: main.c
	$(CC) $(Cflag) main.c

basicMath.o: basicMath.c
	$(CC) $(Cflag) basicMath.c
power.o: power.c
	$(CC) $(Cflag) power.c
	
make clean:
	rm -rf *o