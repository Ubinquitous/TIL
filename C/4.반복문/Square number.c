#include <stdio.h>

int main()
{
    int k=0, i, n=0;

    scanf("%d", &n);

    for(i=1; i<=n; i++){
        if(i*i>n){
            i--;
            break;
        }
    }
    printf("%d %d", n-i*i, i);
    
    return 0;
}