#include <stdio.h>

int main()
{
    int k, h, n, sum=0, cnt=0;

    scanf("%d %d", &k, &h);
    n = (k>h) ? k : h;

        if(k%2==0){
            sum=k*5;
        } else {
            for(int i=1; i<=k; i++){
                if(i%2==1){ sum++; }
            }
        }
        if(h%2==0){
            cnt=h*5;
        } else {
            for(int i=1; i<=h; i++){
                if(i%2==1){ cnt++; }
            }
        }
    printf("%d", sum+cnt);

    return 0;
}