# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-19 18:03:01
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0


# assemble with: gcc -nostdlib -o level3 level3.s
# dump with: objdump -M intel -d level3
# copy binary with: objcopy --dump-section .text=level3_binary level3

.intel_syntax noprefix
.global _start

_start:
    mov rax, rdi;
    imul rax, rsi;
    add rax, rdx;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;

