# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-26 00:57:41
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level22 level22.s
# dump with: objdump -M intel -d level22
# copy binary with: objcopy --dump-section .text=level22_binary level22

.intel_syntax noprefix
.global _start


str_lower:
    xor rax, rax;

    cmp rdi, 0x0;
    je end_str_lower;

start_counting:
    mov rbx, [rdi];
    cmp rbx, 0x0;
    je end_str_lower;

    cmp rbx, 0x5a;
    jg inc_src_addr;

    push rax;
    push rdi;

    mov rax, 0x403000;
    call rax;

    pop rdi;
    mov [rdi], rax;
    pop rax;
    inc rax;

inc_src_addr:
    inc rdi;
    jmp start_counting;

end_str_lower:
    ret;

_start:
    call str_lower;
    nop;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


