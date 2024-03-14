#include <stdio.h>
#define dim 100

void ast(int n){
    int i;
    for(i=0; i<n; i++){
        printf("*");
    }//for
    printf("\n");
}//ast

int main() {
    int a[dim], i, n;
    scanf("%d", &n);
    if(n>100){
        return 1;
    }//if

    for(i=0; i<n; i++){
        scanf("%d", &a[i]);
    }//for

    for(i=0; i<n; i++){
        printf("%d ", a[i]);
        ast(a[i]);
    }//for
    return 0;
}//main