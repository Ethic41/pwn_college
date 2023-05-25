# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-25 19:05:36
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level20 level20.s
# dump with: objdump -M intel -d level20
# copy binary with: objcopy --dump-section .text=level20_binary level20

.intel_syntax noprefix
.global _start

_start:
    mov rcx, 0;
    jmp for_loop;

for_loop:
    add rax, [rdi + rcx * 8];
    inc rcx;
    cmp rcx, rsi;
    jle for_loop;
    jmp compute_average;


compute_average:
    idiv rsi;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


