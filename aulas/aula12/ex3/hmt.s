    .text
    .globl hmt
    .type hmt, @function

hmt:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp

    movl $1, %eax
    cmpl %edi, %esi
    je epilogue

    movl $0, %eax
    cmpl $0, %edi
    je epilogue

    movl $0, %edx
    movl %edi, %eax
    movl $10, %ecx
    div %ecx

    movl %edx, -16(%rbp)
    movl %esi, -12(%rbp)

    movl %eax, %edi
    call hmt

    movl -16(%rbp), %edx
    movl -12(%rbp), %esi

    cmpl %edx, %esi
    jne  epilogue
    addl $1, %eax

epilogue:
    movq %rbp, %rsp
    popq %rbp
    ret
