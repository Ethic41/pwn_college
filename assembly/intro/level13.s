# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 12:41:56
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level13 level13.s
# dump with: objdump -M intel -d level13
# copy binary with: objcopy --dump-section .text=level13_binary level13

.intel_syntax noprefix
.global _start

_start:
    mov rax, [rdi];
    mov rbx, [rdi+0x8];
    add rax, rbx;
    mov [rsi], rax;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


