#include <stdio.h>

void reverse(char *s, int l) {
  int start = 0;
  int end = l - 1;

  if (s[start] == '-')
    start++;

  while (start < end) {
    char temp = s[start];
    s[start] = s[end];
    s[end] = temp;
    start++;
    end--;
  }
}

void itoa(int n, char *c) {
  int i = 0;
  if (n < 0) {
    n = -n;
    c[i] = '-';
    i += 1;
  }

  if (n == 0) {
    c[i++] = '0';
  }

  while (n != 0) {
    int rem = n % 10;
    c[i++] = rem + '0';
    n = n / 10;
  }
  c[i] = '\0';
  reverse(c, i);
}

int main() {
  int n;
  char c[10];
  scanf("%d", &n);

  itoa(n, c);

  printf("%s\n", c);

  return 0;
}
