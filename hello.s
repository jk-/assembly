section .data
    message db "hello jon", 0xA ; "hello\n"
    hbytes  equ $-message

global _main
section .text

_main:
    mov rax, 0x2000004  ; write operation
    mov rdi, 1  ; stdout?
    mov rsi, message    ; move message into rsi
    mov rdx, hbytes
    syscall

    xor rdi, rdi
    mov rax, 0x2000001
    syscall
