# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-24 19:25:49
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level15 level15.s
# dump with: objdump -M intel -d level15
# copy binary with: objcopy --dump-section .text=level15_binary level15

.intel_syntax noprefix
.global _start

_start:
    push rdi;
    push rsi;
    pop rdi;
    pop rsi;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


