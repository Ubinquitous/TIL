#include <stdio.h>

int main()
{
    int h, r, i, j, k, m;

    scanf("%d %d", &h, &r);

    for(m=1; m<=r; m++){

        for(i=1; i<=h; i++){
            for(j=1; j<i; j++){
                printf(" ");
            }
            for(k=j; k<j+1; k++){
                printf("*");
            }
            printf("\n");
        }
        for(i=1; i<h; i++){
            for(j=i+1; j<h; j++){
                printf(" ");
            }
            for(k=j; k<j+1; k++){
                printf("*");
            }
            printf("\n");
        }
    }

    return 0;
}