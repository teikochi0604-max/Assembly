.section    .data
stringvar:
    .ascii  "0123456789abcdef"
.section    .text
.globl  _start
_start:
#exchange the nearby bits
    movl    $8,%ecx
    movl    $stringvar,%ebx
l1:
    movb    (%ebx),%al
    xchgb   %al,1(%ebx)
    movb    %al,(%ebx)
    addl    $2,%ebx
    loop    l1
#output
    movl    $4,%eax 
    movl    $1,%ebx
    movl    $stringvar,%ecx
    movl    $16,%edx
    int     $0x80
#exit
    movl    $1,%eax
    movl    $0,%ebx
    int     $0x80

