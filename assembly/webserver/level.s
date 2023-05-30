# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-30 18:08:52
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level1 level1.s
# dump with: objdump -M intel -d level1
# copy binary with: objcopy --dump-section .text=level1_binary level1

.intel_syntax noprefix
.global _start

_start:
    call finish;

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


