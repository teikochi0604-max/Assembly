.section .text
.globl _start
_start:
    #x86-64(64bits)
    movq %rax,%rbx
    movq 0x8(%rdi),%rdx
    addq %rcx,(%r11,%r12,8)
