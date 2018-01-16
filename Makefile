OBJ=test_shellcode
SRC= test_shellcode.c
ASMSRC_1=test_shellcode.asm 
ASMSRC_2=syscall_write.asm 
all:	
	gcc -Wall $(SRC) -o $(OBJ)

asm1:
	nasm -f bin -o test_shellcode.bin $(ASMSRC_1)

asm2:
	nasm -f bin -o syscall_write.bin $(ASMSRC_2)

.PHONY: clean
clean:
	rm -rf *.bin