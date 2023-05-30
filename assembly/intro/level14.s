# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 12:49:15
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level14 level14.s
# dump with: objdump -M intel -d level14
# copy binary with: objcopy --dump-section .text=level14_binary level14

.intel_syntax noprefix
.global _start

_start:
    mov rbx, 0x7fffff1ffff8;
    sub rbx, rdi;
    mov rax, [rbx];
    push rax;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


