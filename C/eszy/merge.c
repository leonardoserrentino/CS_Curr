#include <stdio.h>
#define dim 10

int main() {
    int a[dim], b[dim], c[dim*2], dla=0, dlb=0, dlc=0, i, ia=0, ib=0;
    for(i=0; i<dim; i++){
        scanf("%d", &a[i]);
        if(a[i]==1111){
            break;
        }
        dla++;
    }//for

    for(i=0; i<dim; i++){
        scanf("%d", &b[i]);
        if(b[i]==1111){
            break;
        }
        dlb++;
    }//for

    for(i=1; i<dla; i++){
        if(a[i]<a[i-1]){
            printf("Errore\n");
            return 1;
        }//if
    }//for

    for(i=1; i<dlb; i++){
        if(b[i]<b[i-1]){
            printf("Errore\n");
            return 1;
        }//if
    }//for

    dlc=dla+dlb;
    for(i=0; i<dlc; i++){
        if(a[ia]>b[ib]){
            c[i]=b[ib];
            ib++;
        }else{
            c[i]=a[ia];
            ia++;
        }//if-esle
    }//for

    for(i=0; i<dlc; i++){
        printf("%d ", c[i]);
    }//for
    return 0;
}//main