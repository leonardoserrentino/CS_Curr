#include <stdio.h>
#include <stdlib.h>
#include "somma.h"

int main(){
	FILE *fp;
	fp=fopen("numeri.txt", "rt");
	if(fp==NULL){
		printf("Errore nella lettura del file numeri.txt\n");
		exit(1);
	}//if
	
	int ss=somma(fp);
	printf("%d\n", ss);
	
	fclose(fp);
	return 0;
}//main
