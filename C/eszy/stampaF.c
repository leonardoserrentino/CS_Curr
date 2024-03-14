#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	FILE* pf;
	char nf[100];
	char c;
	
	printf("Quale file vuoi visualizzare? ");
	scanf("%s", nf);
	
	pf=fopen(nf, "rt");
	if(pf==NULL){
		printf("Errore nell'apertura del file %s\n", nf);
		exit(1);
	}//if
	
	while((c=fgetc(pf))!=EOF){
		putchar(c);
	}//while
	
	if(fclose(pf)!=0){
		printf("Errore nella chiusura del file\n");
		exit(2);
	}//if
	
	return 0;
}//main
