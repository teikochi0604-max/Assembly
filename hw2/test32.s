.section .text
.globl _start
_start:
    #x86(32bits)
    movl $0x12345678,%eax
    movl 0x10(%ebx,%ecx,4),%edx

