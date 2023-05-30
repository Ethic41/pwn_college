# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 09:33:43
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level7 level7.s
# dump with: objdump -M intel -d level7
# copy binary with: objcopy --dump-section .text=level7_binary level7

.intel_syntax noprefix
.global _start

_start:
    mov rax, rdi;
    shl rax, 24;
    shr rax, 56;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


