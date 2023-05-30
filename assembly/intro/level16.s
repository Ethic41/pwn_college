# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-24 20:13:40
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level16 level16.s
# dump with: objdump -M intel -d level16
# copy binary with: objcopy --dump-section .text=level16_binary level16

.intel_syntax noprefix
.global _start

_start:
    add rax, [rsp];
    add rax, [rsp+0x8];
    add rax, [rsp+0x10];
    add rax, [rsp+0x18];
    mov rdi, 4;
    idiv rdi;
    push rax;



finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


