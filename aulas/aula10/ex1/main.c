#include <stdio.h>

int dividir(int, int, int*);

int main() {
  int dividendo, divisor, resto;
  scanf("%d %d", &dividendo, &divisor);

  int resultado = dividir(dividendo, divisor, &resto);

  printf("A divisao deu %d com resto %d\n", resultado, resto);

  return 0;
}
