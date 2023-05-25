# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-26 00:31:37
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level21 level21.s
# dump with: objdump -M intel -d level21
# copy binary with: objcopy --dump-section .text=level21_binary level21

.intel_syntax noprefix
.global _start

_start:
    xor rcx, rcx;
    cmp rdi, 0x0;
    jne start_counting;
    jmp end;

start_counting:
    mov rbx, [rdi + rcx];
    cmp rbx, 0x0;
    je end;
    inc rcx;
    jmp start_counting;

end:
    mov rax, rcx;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


