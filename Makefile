CC = g++
Cflag = -Wall -g 


make mymaths:
	
	ar rc libmyMath.a main.o myMath.o
	ranlib libmyMath.a
	
make mymathd:
	ifndef libmyMath
	$(CC) $(Cflag) *c -c -fPIC
	$(CC) *.o -shared -o libmyMath.so
	endif
make maind : main.o basicMath.o power.o
	$(CC) $(Cflag) main.o basicMath.o power.o -o maind
	$(CC) maind.o -libmyMathd -o maind
make mains : main.o basicMath.o power.o
	$(CC) $(Cflag) main.o basicMath.o power.o -o mains
	
make all: maind mains mymathd mymaths
.PHONY: clean all

main.o: basicMath.c power.c main.c
	$(CC) $(Cflag) main.c -c

basicMath.o: basicMath.c basicMath.h
	$(CC) $(Cflag) basicMath.c basicMath.h
	
power.o: power.c power.h
	$(CC) $(Cflag) power.c basicMath.h
myMath.o : myMath.c myMath.h
	$(CC) $(Cflag) myMath.c myMath.h

make clean:
	rm -f *.o *.a *.so
	echo clean done