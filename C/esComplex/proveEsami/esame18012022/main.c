#include <stdio.h>
#include <stdlib.h>

#include "listaParole.h"

int main(int argc, char* argv[]){
	char t[31];
	Lista l;
	FILE* fp;
	
	if(argc<2){
		printf("Uso scorretto di frequenze:\n./frequenze 'file.txt'\no\n./frequenze 'file.txt'\n");
		exit(-1);
	}//if
	
	fp=fopen(argv[1], "rt");
	if(fp==NULL){
		printf("Errore nell'apertura di %s\n", argv[1]);
		exit(1);
	}//if
	
	inizializza(&l);
	while(fscanf(fp, "%s", t)>0){
		aggiorna(&l, t);
	}//while
	
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file %s\n", argv[1]);
		exit(2);
	}//if
	
	stampa(l);
	
	return 0;
}//main
