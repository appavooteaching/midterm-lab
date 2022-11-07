        .intel_syntax noprefix
        .section .data

POS_SUM:        .quad 0x0
NEG_SUM:        .quad 0x0
data:    .quad -1, -1, 0, 2, 3, 1, 1, -100, 1, -4

        .section .text
        .global _start
_start:
        xor rax, rax
        xor rdi, rdi
A:
        mov rcx, QWORD PTR [data+rdi*8]
        cmp rcx, 0
        jl B
        add QWORD PTR [POS_SUM], rcx
        jmp C
B:      add QWORD PTR [NEG_SUM], rcx
C:      add rax, rcx,
        inc rdi
        cmp rax, 0
        je D
        jmp A
D:      int3
