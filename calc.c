#include <stdio.h>
int add(int a, int b);
int sub(int a, int b);
int mul(int a, int b);

int main() {
	int a, b;
	scanf("%d %d", &a, &b);
	printf("%d - %d = %d\n", a, b, sub(a, b));
	printf("%d + %d = %d\n", a, b, add(a, b));
	printf("%d * %d = %d\n", a, b, mul(a, b));
}

