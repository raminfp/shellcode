BITS 64

%define SYS_WRITE 1
%define STDOUT 1

_start:
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    lea rsi, [rel _print]
    mov rdx, _print_end - _print
    syscall
    ret

_print:
    db "Hello!", 5
_print_end: