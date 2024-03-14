#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	FILE* pf=fopen("prova.txt", "wt");
	
	if(pf==NULL){
		printf("Impossibile aprire il file\n");
		exit(1);
	}//if
	
	char cs[30];
	fscanf(stdin, "%s", cs);
	while(strcmp(cs, "FINE")!=0){
		fprintf(pf, "%s ", cs);
		fscanf(stdin, "%s", cs);
	}//while
	fprintf(pf, "\n");
	
	if(fclose(pf)!=0){
		printf("Errore nella chiusura del file\n");
		exit(2);
	}//if
	
	return 0;
}//main
