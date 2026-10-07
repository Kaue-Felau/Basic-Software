#include <stdio.h>

/* int fib(int n) {
    if (n == 0) 
        return 0; 
    if (n == 1) 
        return 1;
    int fib0 = fib(n-1);
    int fib1 = fib(n-2);
    return fib0 + fib1;
} */

int fib(int n);

int main() {
    int n;
    scanf("%d", &n);
    int fi = fib(n);
    printf("%d-esimo termo da sequencia de fibonacci: %d\n", n, fi);

    return 0;
}
