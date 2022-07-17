#include <stdio.h>

int main()
{
    int a, b, c;
    int i=0;
    scanf("%d %d %d", &a, &b, &c);

    for(i=a; i<=90; i+=5){
        if(i!=80)
        b=b+1;
    }
    if(b==c){ printf("same"); }
        else
        printf(b>c ? "win" : "lose");

    return 0;
}