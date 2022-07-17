#include <stdio.h>

int main()
{
    int n, i, j, s=1;
    
    scanf("%d", &n);
    
    for(i=1; i<=n; i++){
        for(j=1; j<=n; j++){
            if(i==1 || i==n || j==1 || j==n || j==s || j==n-s+1 || i==n/2+1 || j==n/2+1){
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n"); s++;
    }
}