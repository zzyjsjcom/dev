CC=gcc
CFLAGS=-g -Wall -O2
LDFLAGS= # --static
no_print=--no-print-directory

hello: hello.S

.PHONY: clean done
clean:
	rm hello

done:
	@make ${no_print} hello
	./hello
	@make ${no_print} clean
