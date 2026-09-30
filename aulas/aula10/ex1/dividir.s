  .text
  .globl dividir
  .type dividir, @function

# int dividir(int dividendo, int divisor, int* resto)
# retorna o quociente, e o resto no ponteiro resto
dividir:
  # Prologue
  pushq %rbp
  movq %rsp, %rbp

  # Division
  movq %rdx, %rcx
  movl %edi, %eax
  movl $0, %edx # If the dividend is negative? 
  idivl %esi # Result is already in %eax 
  movl %edx, (%rcx) # Copy the remainder to the pointer

  # Epilogue
  movq %rbp, %rsp
  popq %rbp
  ret
