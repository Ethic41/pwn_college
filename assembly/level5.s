# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-20 15:56:17
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level5 level5.s
# dump with: objdump -M intel -d level5
# copy binary with: objcopy --dump-section .text=level5_binary level5

.intel_syntax noprefix
.global _start

_start:
    mov rax, rdi;
    div rsi;
    mov rax, rdx;

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


