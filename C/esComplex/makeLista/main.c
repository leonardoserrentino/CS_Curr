#include <stdio.h>
#include <stdlib.h>
#include "funzioni.h"

int main(){
	Lista l, ll;
	int n;
	
	inizializza(&l);
	scanf("%d", &n);
	while(n!=0){
		insOrd(&l, n);
		scanf("%d", &n);
	}//while
	
	printf("Lista:\n");
	stampa(l);
	printf("Reverse:\n");
	reverse(l, &ll);
	stampa(ll);
	elimina(&l);
	printf("Eliminato:\n");
	stampa(l);
	return 0;
}//main
