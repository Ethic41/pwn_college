# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-25 16:11:34
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level19 level19.s
# dump with: objdump -M intel -d level19
# copy binary with: objcopy --dump-section .text=level19_binary level19

.intel_syntax noprefix
.global _start

_start:
    cmp rdi, 0x3;
    ja default;
    jmp [rsi + rdi * 8]

default:
    jmp [rsi + 0x20]

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


