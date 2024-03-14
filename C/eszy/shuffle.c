#include <stdio.h>
#define dim 20

int main() {
    int a[dim], i, dl=0, t;
    for(i=0; i<dim; i++){
        scanf("%d", &a[i]);
        if(a[i]==101){
            break;
        }//for
        dl++;
    }//for
    
    for(i=0; i<dl/2+(dl%2); i++){
        t=a[i];
        a[i]=a[dl/2+i+dl%2];
        a[dl/2+i+dl%2]=t;
    }//for

    if(dl%2){
        for(i=dl/2; i<dl; i++){
            a[i]=a[i+1];
        }//for
    }//if

    for(i=0; i<dl; i++){
        printf("%d ", a[i]);
    }//for

    
    return 0;
}//main