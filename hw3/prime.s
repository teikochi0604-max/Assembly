.section    .data
    total:  .int 0            
    format: .ascii "Total primes: %d\n\0"

.section    .text
.extern     is_prime          
.extern     printf
.globl _start

_start:
    movl    $2, %ebx        

loop_start:
    cmpl    $1000, %ebx     
    jg      print_result       

    pushl    %ebx            
    call    is_prime          
    addl    $4, %esp          

    cmpl    $1, %eax          
    jne     next_num            

    addl    %ebx, total            

next_num:
    incl    %ebx               
    jmp     loop_start          

print_result:
    pushl   total
    pushl   $format
    call    printf
    addl    $8, %esp

# exit
    movl    $1, %eax
    xorl    %ebx, %ebx
    int     $0x80

