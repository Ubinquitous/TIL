#include <stdio.h>

int main()
{
    int a, b, c, maxx;
    
    scanf("%d %d %d", &a, &b, &c);
    maxx = a;
    if(maxx<b){
        maxx = b;
    } if(maxx<c){
        maxx = c;
    }
    if(maxx==c){
        if(maxx<a+b) printf("yes");
        else printf("no");
    } else if(maxx==b){
        if(maxx<a+c) printf("yes");
        else printf("no");
    } else if(maxx==a){
        if(maxx<b+c) printf("yes");
        else printf("no");
    }
    
    return 0;
}