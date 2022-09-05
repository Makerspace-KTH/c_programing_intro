# Location of where hello.c is stored in
#SRCDIR=.

# Name of the compiler, GNU GCC in this case
CC=gcc

# Any flags for the compiler
CFLAG= -g

# Any include directories
#INCLUDE = 

# Any libraries to link with
#LIBS =

all: hello

hello:
#	$(CC) $(SRCDIR)/hello.c -o $@ $(LIBS) 
	$(CC) hello.c -o hello

clean:
	rm hello
