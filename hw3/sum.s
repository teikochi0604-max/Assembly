.section    .data
sum:
    .int    0

.section    .text
.globl  _start
_start:
#adding procedure
    movl    $100,%ecx
    movl    $1,%ebx
    movl    $0,%eax
l1:
    addl    %ebx,%eax
    addl    $2,%ebx
    loop    l1

    movl    %eax,sum
#exit
    movl    $1,%eax
    movl    $0,%ebx
    int     $0x80
