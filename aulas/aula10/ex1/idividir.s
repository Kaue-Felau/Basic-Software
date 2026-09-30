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
  cltd # Convert Long (32 bits) To Double (64 bits)
  # this last instruction extend the signal of %eax 
  # to %edx 
  # for example, if %eax = 0xF0000FFF, then %edx <- 0xFFFFFFFF

  idivl %esi # Result is already in %eax 
  movl %edx, (%rcx) # Copy the remainder to the pointer

  # Epilogue
  movq %rbp, %rsp
  popq %rbp
  ret
