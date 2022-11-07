        .intel syntax noprefix
        .section .data
result:
        .quad 0x0
        .section .text
        .global start
start:
        add rax, rax
        mov QWORDPTR [result], rax
        int3
