#include <stdio.h>

int main()
{
    int n, m, i, j;
    
    scanf("%d", &n);
    
    while(1){
        if(n<1) break;
        
        n-=2;
        m++;
    } n=1;
    
    for(i=1; i<=m; i++){
        for(j=1; j<m-i+1; j++){
            printf(" ");
        }
        for(j=1; j<=n; j++){
            printf("*");
        }
        printf("\n"); n+=2;
    }

    return 0;
}