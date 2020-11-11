CC = gcc
CFLAG = -Wall -g 


make maind : main.o myMath.o
	$(CC) $(CFLAG) -o maind main.o libmyMathd.a
	$(CC) maind.o -libmyMathd -o maind
make mains : main.o myMath.o
	$(CC) $(CFLAG) -o mains main.o libmyMaths.so 

make libmyMathd: libmyMathd.a
	$(CC) $(CFLAG) -c libmyMathd.a

make libmyMaths: libmyMaths.so
	$(CC) $(CFLAG) -c libmyMathd.so

libmyMathd.a: myMath.o
	ar -rcs libmyMathd.a myMath.o
libmyMaths.so: myMath.o
	$(CC) $(CFLAG) -shared -o libmyMaths.so myMath.o

main.o: basicMath.c power.c main.c
	$(CC) $(CFLAG) -c main.c 

basicMath.o: basicMath.c basicMath.h
	$(CC) $(CFLAG) basicMath.c basicMath.h
	
power.o: power.c power.h
	$(CC) $(CFLAG) power.c basicMath.h

myMath.o : myMath.c myMath.h
	$(CC) $(CFLAG) myMath.c myMath.h

libmyMathd.o: myMath.c myMath.h
	$(CC) $(CFLAG) -c myMath.c 

libmyMath.o: myMath.c myMath.h
	$(CC) $(CFLAG) -c myMath.c 
	
make clean:
	rm -f *.o *.a *.so
	echo clean done
make all: maind mains mymathd mymaths
.PHONY: clean all