#include <stdio.h>
#include <stdlib.h>
#include "listaPersone.h"

int main(int argc, char* argv[]){
	Dato d;
	Lista l;
	FILE* fp;
	if(argc!=2 && argc!=5){
		printf("Uso scorretto di greenpass:\n ./greenpass 'file.dat'\no\n./greenpass 'file.dat' 'giorno mese anno'\n");
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
	if(argc==2){
		stampa(l, stdout);
	}else{
		Data dd;
		dd.giorno=atoi(argv[2]);
		dd.mese=atoi(argv[3]);
		dd.anno=atoi(argv[4]);
		stampaData(l, stdout, dd);
	}//if-else
	return 0;
}//main
