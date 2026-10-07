    .text
    .globl fib
    .type fib, @function

fib:
    # Prologue
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp

    # Base case  
    movl %edi, %eax
    cmpl $1, %edi
    jle epilogue

    # Recursive case
    decl %edi
    movl %edi, -16(%rbp)
    call fib # calling fib(n-1)
    movl %eax, -12(%rbp) # fib0 = fib(n-1)
    movl -16(%rbp), %edi
    decl %edi # fib1 = fib(n-1)
    call fib

    addl -12(%rbp), %eax # eax == fib1 <- fib1 + fib0

    # Epilogue
epilogue:
    movq %rbp, %rsp
    popq %rbp
    ret
