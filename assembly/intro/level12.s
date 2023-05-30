# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 12:28:08
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level12 level12.s
# dump with: objdump -M intel -d level12
# copy binary with: objcopy --dump-section .text=level12_binary level12

.intel_syntax noprefix
.global _start

_start:
    mov rax, 0xdeadbeef00001337;
    mov rbx, 0xc0ffee0000;
    mov [rdi], rax;
    mov [rsi], rbx;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


