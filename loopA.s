        .intel_syntax noprefix
        .section .data

data:
        .quad 0x1, 0x3, 0x5, 0x7, 0x9, 0xb, 0xd, 0xf

        .section .text
        .global _start
_start:
        xor rax, rax
        mov rbx, OFFSET [data]
        xor rcx, rcx
A:
        add rax, QWORD PTR [rbx +8*rcx]
        inc rcx
        cmp rcx, 4
        jl A
        int3

