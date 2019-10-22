ifndef GCC_SVE_DIR
GCC_SVE_DIR=/home/dev/bin/gcc_sve
endif

GCC=${GCC_SVE_DIR}/bin/aarch64-linux-gnu-gcc
CFLAGS=-g -Wall -march=armv8.2-a+sve -O2
LDFLAGS=

COMPILE.c=$(GCC) $(CFLAGS) -c
.o:.c
.o:.S

all: sve_strlen sve_hello
sve_strlen: sve_strlen_test.o sve_strlen.o
sve_hello: sve_hello.o

run_asm: sve_strlen
	./sve_strlen
run_intrinsics: sve_hello
	./sve_hello

run: all
	./sve_strlen
	./sve_hello

.PHONY: clean
clean:
	rm -f *.o sve_strlen sve_hello
