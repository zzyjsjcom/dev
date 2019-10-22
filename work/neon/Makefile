GCC=gcc
CFLAGS=-g -Wall -march=armv8.2-a -O2
LDFLAGS=

.o:.c
.o:.S

all: neon_add3 neon_hello
neon_hello: neon_hello.o
neon_add3: neon_add3_test.o neon_add3.o

run_asm: neon_add3
	./neon_add3

run_intrinsics: neon_hello
	./neon_hello

run: all
	./neon_add3
	./neon_hello

.PHONY: clean
clean:
	rm -f *.o neon_add3 neon_hello
