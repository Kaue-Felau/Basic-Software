  .text
  .globl fatorial
  .type fatorial, @function

# int fatorial(int n);
fatorial:
  # Prologue
  pushq %rbp
  movq %rsp, %rbp

  movl $1, %eax
  movl $0, %edx

loop:
  cmpl $1, %edi # if (n <= 1)
  jle end

  mull %edi
   
  decl %edi 
  jmp loop

end:
  # Epilogue
  movq %rbp, %rsp
  popq %rbp
  ret
