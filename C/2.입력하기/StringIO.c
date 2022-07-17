#include <stdio.h>

int main()
{
    char a[31]={0};

    fgets(a, 31, stdin);
    printf("%s", a);

    return 0;
}