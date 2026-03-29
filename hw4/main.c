#include <stdio.h>

extern int findfirst1(unsigned int number);

int main(void) {
    unsigned int number;
    int result;

    printf("请输入一个无符号整数: ");
    scanf("%u", &number);

    result = findfirst1(number);

    printf("findfirst1(%u) = %d\n", number, result);

    return 0;
}