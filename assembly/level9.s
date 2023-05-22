# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-22 11:32:31
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level9 level9.s
# dump with: objdump -M intel -d level9
# copy binary with: objcopy --dump-section .text=level9_binary level9

.intel_syntax noprefix
.global _start

_start:
    and rdi, 0x1; get the least bit in rdi, if it is 1, rdi is odd
    and rax, 0x0; clear rax
    xor rax, 0x1; set rax to 1
    xor rax, rdi; if rdi is odd, rax is 0, else rax is 1


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


