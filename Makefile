all: clean stack-var.asm static-var.asm static-test stack-test

stack-var.asm:
	gcc stack-var.c -o stack-var.asm -c -O0 -S -masm=intel
static-var.asm:
	gcc static-var.c -o static-var.asm -c -O0 -S -masm=intel

static-test:
	gcc -g -O0 -c static-main.c -o static-main.o
	gcc -O0 -o static-test static-main.o


stack-test:
	gcc -g -O0 -c stack-main.c -o stack-main.o
	gcc -O0 -o stack-test stack-main.o

clean:
	rm -rf *.asm
	rm -rf *.o
	rm -f static-test
	rm -f stack-test

clean-callgrind:
	rm callgrind.out.*