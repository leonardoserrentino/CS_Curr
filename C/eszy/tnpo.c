#include <stdio.h>

int main(){
    unsigned long long n;
    int i;
    scanf("%lld", &n);
    for(i=0; n!=1; i++){
        printf("n=%lld, passo=%d\n", n, i);
        if(n%2==0){
            n/=2;
        }else{
            n=n*3+1;
        }
    }
    printf("n=%lld, passo=%d\n", n, i);
}//main