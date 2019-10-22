CC=gcc
CFLAGS=-g -Wall -O2
LDFLAGS=

all: hello

.o:.S

.PHONY: clean
clean:
	rm -f hello *.o

run: hello
	./hello
