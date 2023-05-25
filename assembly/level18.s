# -=-<[ Bismillahirrahmanirrahim ]>-=-
# -*- coding: utf-8 -*-
# @Date    : 2023-05-25 08:57:55
# @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
# @Link    : link
# @Version : 1.0.0



# assemble with: gcc -nostdlib -o level18 level18.s
# dump with: objdump -M intel -d level18
# copy binary with: objcopy --dump-section .text=level18_binary level18

.intel_syntax noprefix
.global _start

_start:
    mov rcx, [rdi];
    cmp rcx, 0x7f454c46;
    jne second_test;
    xor rax, rax;
    add rax, [rdi + 0x4];
    add rax, [rdi + 0x8];
    add rax, [rdi + 0xc];


second_test:
    mov rcx, [rdi];
    cmp rcx, 0x00005A4D;
    jne final_case;
    xor rax, rax;
    add rax, [rdi + 0x4];
    sub rax, [rdi + 0x8];
    sub rax, [rdi + 0xc];
    jmp end;


final_case:
    xor rax, rax;
    add rax, [rdi + 0x4];
    mov rbx, [rdi + 0x8];
    mul rbx;
    mov rbx, [rdi + 0xc];
    mul rbx;

end:
    nop;


finish:
    mov rdi, 0x0;
    mov rax, 0x3c;
    syscall;


