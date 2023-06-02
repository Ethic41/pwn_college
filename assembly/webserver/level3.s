# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-06-01 00:15:56
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level3 level3.s
# dump with: objdump -M intel -d level3
# copy binary with: objcopy --dump-section .text=level3_binary level3

.intel_syntax noprefix

.section .data
    af_inet:
        .word 0x2;
    port:
        .word 80;
    listen_address: 
        .word 0x0, 0x0, 0x0, 0x0;


.section .text
    .global _start

_start:
    # socket(AF_INET, SOCK_STREAM, 0)
    mov rdi, 0x2;
    mov rsi, 0x1;
    mov rdx, 0x0;
    mov rax, 0x29;
    syscall;

    sub rsp, 0x10;
    # lea rsi, [rsp];
    mov word ptr[rsp], 0x2; 
    mov word ptr [rsp+0x3], 0x50;
    mov dword ptr [rsp+0x5], 0x0;
    mov dword ptr [rsp+0x9], 0x0;

    # bind(int sockfd, const struct sockaddr *addr, socklen_t addrlen)
    mov rdi, rax;
    mov rsi, rsp;
    mov rdx, 0x10;
    mov rax, 0x31;
    syscall;

    call finish;

finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;

