# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 11:57:07
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level10 level10.s
# dump with: objdump -M intel -d level10
# copy binary with: objcopy --dump-section .text=level10_binary level10

.intel_syntax noprefix
.global _start

_start:
    mov rax, [0x404000];
    add rdi, rax;
    add rdi, 0x1337;
    mov [0x404000], rdi;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


