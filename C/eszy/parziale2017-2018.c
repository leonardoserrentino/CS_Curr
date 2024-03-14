#include <stdio.h>

float valoreAssoluto(float a){
    if(a>=0){
        return a;
    }else{
        return -a;
    }//if-else
}//valoreAssoluto

float radice(float a){
    float x=1.0;
    while(valoreAssoluto(x*x-a)>1e-5){
        x=(x+a/x)/2.0;
    }//while
    return x;
}//radice

float f(int n){
    return radice((float)(n-1)/(n+1));
}//f

int main() {
    int A, B, i;

    /*controllo positività di entrambi i numeri*/
    do{
        printf("Inserisci due numeri NATURALI\n");
        scanf("%d%d", &A, &B);
    }while(A<0 || B<0 || A==B || A==0 || B==0);

    /*definisco istruzioni sia per a<b che per a>b*/
    if(A<B){
        for(i=A; i<=B; i++){
            if(i%2){
                printf("%d\n", i);
            }else{
                printf("%f\n", f(i));
            }//if-else
        }//for
    }else{
        for(i=A; i>=B; i--){
            if(i%2){
                printf("%d\n", i);
            }else{
                printf("%f\n", f(i));
            }//if-else
        }//for
    }//if-else
    return 0;
}//main
