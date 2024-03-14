#include <stdio.h>
#include <stdlib.h>

#include "listaCani.h"

int main(int argc, char* argv[]){
	Record r;
	Cane c;
	Lista l;
	
	FILE*fp;
	if(argc!=2){
		printf("Uso scorretto di vaccinazioni:\n./vaccinazioni 'file.dat'\n");
		exit(-1);
	}//if
	fp=fopen(argv[1], "rb");
	if(fp==NULL){
		printf("Errore nell'apertura di %s\n", argv[1]);
		exit(1);
	}//if
	
	inizializza(&l);
	while(fread(&r, sizeof(Record), 1, fp)){
		aggiorna(&l, r);
	}//while
	
	if(fclose(fp)!=0){
		printf("Errore nel terminare la lettura del file %s\n", argv[1]);
		exit(2);
	}//if
	
	stampa(l);
	stampaFile(l);
	return 0;
}//main
