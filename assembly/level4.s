# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-20 11:59:19
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level4 level4.s
# dump with: objdump -M intel -d level4
# copy binary with: objcopy --dump-section .text=level4_binary level4

.intel_syntax noprefix
.global _start

_start:
    mov rax, rdi;
    div rsi;

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


