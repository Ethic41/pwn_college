# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-20 20:08:05
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level6 level6.s
# dump with: objdump -M intel -d level6
# copy binary with: objcopy --dump-section .text=level6_binary level6

.intel_syntax noprefix
.global _start

_start:
    mov al, dil;
    mov bx, si;

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


