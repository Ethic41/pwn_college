# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-19 17:01:46
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level2 level2.s
# dump with: objdump -M intel -d level2
# copy binary with: objcopy --dump-section .text=level2_binary level2

.intel_syntax noprefix
.global _start

_start:
    add rdi, 0x331337;

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;

