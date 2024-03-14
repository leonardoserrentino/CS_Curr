#include <stdio.h>

void lettura(int (*pm)[10], int *pn){
	int i, j;
	scanf("%d", pn);
	for(i=0; i<*pn; i++){
		for(j=0; j<*pn; j++){
			scanf("%d", &pm[i][j]);
		}//for
	}//for
}//lettura

/*Ritorna 1 se la matrice è simmetrica rispetto all'asse i==j
		  0 altrimenti*/
int simmetrica(int (*pm)[10], int n){
	int i, j;
	int c=0, ex=(n*n)-n;
	for(i=0; i<n; i++){
		for(j=0; j<n; j++){
			if(i!=j){
				if(pm[i][j]==pm[j][i]){
					c++;
				}//if
			}//if
		}//for
	}//for
	return c==ex;
}//simmetrica

int main(){
	int M[10][10];
	int n;
	lettura(M, &n);
	printf("%d\n", simmetrica(M,n));
	return 0;
}//main
