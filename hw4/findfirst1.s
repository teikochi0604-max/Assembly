.section    .text
.globl      findfirst1
.type   findfirst1 ,@function

findfirst1:
    pushl   %ebp
    movl    %esp, %ebp

    movl    8(%ebp), %eax      # eax = number
    cmpl    $0, %eax
    jne     L_check

    movl    $-1, %eax          # 如果 number == 0，返回 -1
    jmp     L_done

L_check:
    movl    $0, %edx           # edx = idx = 0

L_loop:
    testl   $1, %eax           # 检查最低位是否为 1
    jne     L_found

    shrl    $1, %eax           # number >>= 1
    incl    %edx               # idx++
    jmp     L_loop

L_found:
    movl    %edx, %eax         # 返回 idx

L_done:
    popl    %ebp
    ret