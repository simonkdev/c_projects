#include <stdio.h>

int main() {
    typedef unsigned int uint;
    uint age = 42;
    int* ptrAge = &age;
    printf("%p \n", &age);
    printf("%p \n", ptrAge);

    char name = 'S';
    char* ptrName = &name;
    printf("%p \n", &name);
    printf("%p \n", ptrName);

    printf("%c \n", *ptrName);
    printf("%d \n", *ptrAge);

    return 0;
}