#include <stdio.h>
#include <stdlib.h>
#include "listaPersone.h"

int main(int argc, char* argv[]){
	Dato d;
	Lista l;
	FILE* fp;
	if(argc!=2){
		printf("Uso scorretto di greenpass: ./greenpass 'file.dat'\n");
		exit(-1);
	}//if
	fp=fopen(argv[1], "rb");
	if(fp==NULL){
		printf("Errore nell'apertura del file %s\n", argv[1]);
		exit(2);
	}//if
	
	inizializza(&l);
	while(fread(&d, sizeof(Dato), 1, fp)){
		aggiorna(&l, d);
	}//while
	fclose(fp);
	stampa(l, stdout);
	
	return 0;
}//main
