#include <stdio.h>

/* int howManyTimes(int n, int k) {
    if (n == 0) {
        if(k == 0)
            return 1;
        return 0;
    } 
    int digit = n % 10;
    if (digit == k) 
        return 1 + howManyTimes(n / 10, k);
    
    return howManyTimes(n / 10, k);
} */

int hmt(int n, int k);

int main() {
    int n, k;
    scanf("%d %d", &n, &k);
    int t = hmt(n,k);
    printf("O numero %d aparece %d vezes em %d\n", k, t, n);

    return 0;
}
