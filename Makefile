CC = gcc
CFLAGS = -Wall

all: process_creation linker_example simple_program

process_creation: process_creation.c
	$(CC) $(CFLAGS) process_creation.c -o process_creation

linker_example: file1.c file2.c
	$(CC) $(CFLAGS) file1.c file2.c -o linker_example

simple_program: simple_program.c
	$(CC) $(CFLAGS) simple_program.c -o simple_program

run:
	@echo "=== fork() example ==="
	./process_creation
	@echo "\n=== Linker example ==="
	./linker_example
	@echo "\n=== Loader example ==="
	./simple_program
	@echo "\n=== Libraries loaded by the Loader ==="
	ldd simple_program

clean:
	rm -f process_creation linker_example simple_program

.PHONY: all run clean
