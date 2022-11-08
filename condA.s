        .intel_syntax noprefix
        .section .data
data0 : .quad 0xdead
data1 : .quad 0xbeef
data2 : .quad 0xfeed
data3 : .quad 0xface
        .section .text
        .global start
_start:
        xor rcx, rcx
        and rax, 0xf
        mov rbx, QWORD PTR [data0]
        and rbx, 0xf
        cmp rax, rbx
        jne A
        inc rcx
A:
	mov rbx, QWORD PTR [data1]
        and rbx, 0xf
        cmp rax, rbx
        jne B
        inc rcx
B:
	mov rbx, QWORD PTR [data1]
        and rbx, 0xf
        cmp rax, rbx
        jne C
        inc rcx
C:
	mov rbx, QWORD PTR [data1]
        and rbx, 0xf
        cmp rax, rbx
        jne D
        inc rcx
D:
	int3
