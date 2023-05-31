# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-06-01 00:13:48
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level2 level2.s
# dump with: objdump -M intel -d level2
# copy binary with: objcopy --dump-section .text=level2_binary level2

.intel_syntax noprefix
.global _start

_start:
    # create a socket
    # socket(int domain, int type, int protocol)
    # socket(AF_INET, SOCK_STREAM, 0)
    mov rdi, 0x2;
    mov rsi, 0x1;
    mov rdx, 0x0;
    mov rax, 0x29;
    syscall;
    
    call finish;

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


