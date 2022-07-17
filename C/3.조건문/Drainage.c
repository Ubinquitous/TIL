#include <stdio.h>

int main()
{
    int a, b;

    scanf("%d %d", &a, &b);

    if(a>=b && a%b==0){
        printf("%d*%d=%d",b, a/b, b*a/b);
    } else if(b>a && b%a==0) {
        printf("%d*%d=%d", a, b/a, a*b/a);
    } else {
        printf("none");
    }
    
    return 0;
}