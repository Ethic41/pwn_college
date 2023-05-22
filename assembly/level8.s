# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 10:55:56
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level8 level8.s
# dump with: objdump -M intel -d level8
# copy binary with: objcopy --dump-section .text=level8_binary level8

.intel_syntax noprefix
.global _start

_start:
    or rax, 0xffffffffffffffff;
    and rax, rdi;
    and rax, rsi;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


