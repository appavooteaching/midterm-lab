        .intel_syntax noprefix
        .section .data
result:
        .quad 0x0
        .section .text
        .global start
_start:
        add rax, rax
        mov QWORD PTR [result], rax
        int3
