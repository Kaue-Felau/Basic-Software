#include <stdio.h>

unsigned int fatorial(int n);

int main() {
  int n;
  scanf("%d", &n);

  unsigned int resultado = fatorial(n);

  printf("O resultado de %d! é %d\n", n, resultado);

  return 0;
}
