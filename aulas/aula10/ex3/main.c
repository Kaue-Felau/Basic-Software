#include <stdio.h>

void reverse(char *c, int len) {
  int i = 0, j = len - 1;
  while (i < j) {
    char tmp = c[i];
    c[i] = c[j];
    c[j] = tmp;
    i++;
    j--;
  }
}

// void itoa(int n, char *c) {
//   int i = 0;
//   int sign = 0;
//   if (n < 0) {
//     n = -n;
//     sign = 1;
//   }
//   do {
//     c[i++] = (n % 10) + '0';
//   } while ((n /= 10) > 0);
//   if (sign)
//     c[i++] = '-';
//   c[i] = '\0';
//   reverse(c, i);
// }

void itoa(int n, char *s);

int main() {
  int n;
  char c[10];
  scanf("%d", &n);

  itoa(n, c);

  printf("%s\n", c);

  return 0;
}
