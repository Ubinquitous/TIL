#include <stdio.h>

int main()
{
    int a, b, d;
    int i;
    float sum=0;

    scanf("%d %d", &a, &b);

    sum=a;
    for(i=1; i<=b; i++){
        scanf("%d", &d);
        if(d<0){
            sum=sum-sum*-d/100;
        } else {
            sum=sum+sum*d/100;
        }
    }
    printf("%.f\n", sum-a);
    if(sum-a>0){ printf("good"); }
    else if(sum-a==0){ printf("same"); }
    else { printf("bad"); }

    return 0;
}