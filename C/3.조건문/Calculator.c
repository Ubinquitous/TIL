#include <stdio.h>

int main()
{
    int n, m;
    char b;

    scanf("%d%c%d", &n,&b,&m);

    if(b=='+'){
        printf("%d", n+m);
    }else if(b=='-'){
        printf("%d", n-m);
    }else if(b=='*'){
        printf("%d", n*m);
    }else if(b=='/'){
        printf("%.2f", (float)n/m);
    }

    return 0;
}