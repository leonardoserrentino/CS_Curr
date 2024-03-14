#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "listaVeicoli.h"

int main(int argc, char* argv[]){
	Record r;
	Lista l;
	FILE *fp;
	if(argc!=2){
		printf("Uso scorretto di %s:\n./fatture 'file.dat'\n", argv[0]);
		exit(-1);
	}//if
	fp=fopen(argv[1], "rb");
	if(fp==NULL){
		printf("Errore nell'apertura del file %s\n", argv[1]);
		exit(1);
	}//if
	inizializza(&l);
	while(fread(&r, sizeof(Record), 1, fp)){
		aggiorna(&l, r);
	}//while
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file %s\n", argv[1]);
		exit(2);
	}//if
	stampa(l);
	ultimi(argv[1]);
		
	return 0;
}//main
