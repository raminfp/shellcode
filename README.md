# shellcode of book "Attacking network protocol by jems forshaw"

### How to install NASM :

```terminal
root@raminfp# apt-get install build-essential nasm
```

```terminal
root@raminfp# cc -Wall -o test_shellcode test_shellcode.c
root@raminfp# nasm -f bin -o test_shellcode.bin test_shellcode.asm
root@raminfp# ./test_shellcode test_shellcode.bin
```
