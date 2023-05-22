# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 12:12:54
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level11 level11.s
# dump with: objdump -M intel -d level11
# copy binary with: objcopy --dump-section .text=level11_binary level11

.intel_syntax noprefix
.global _start

_start:
    mov al, [0x404000];
    mov bx, [0x404000];
    mov ecx, [0x404000];
    mov rdx, [0x404000];


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


