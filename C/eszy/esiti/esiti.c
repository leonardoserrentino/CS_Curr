#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct{
	char esame[21];
	int voto;
}Esito;

int main(){
	FILE *fp;
	Esito ea[30], eb[30], eF[30];
	int dl, i;
	
	fp=fopen("libretto1.bin", "rb");
	if(fp==NULL){
		printf("Errore nell'apertura del file libretto1.bin\n");
		exit(1);
	}//if
	
	dl=fread(ea, sizeof(Esito), 30, fp);
	
	
	for(i=0; i<dl; i++){
		printf("%s %d\n", ea[i].esame, ea[i].voto);
	}//for
	
	printf("\n");
	
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file libretto1.bin\n");
		exit(2);
	}//if
	
	
	fp=fopen("libretto2.bin", "rb");
	if(fp==NULL){
		printf("Errore nell'apertura del file libretto2.bin\n");
		exit(1);
	}//if
	
	fread(eb, sizeof(Esito), 30, fp);
	
	for(i=0; i<dl; i++){
		printf("%s %d\n", eb[i].esame, eb[i].voto);
	}//for
	
	printf("\n");
	
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file libretto2.bin\n");
		exit(2);
	}//if
	
	
	fp=fopen("librettoFinale.bin", "w+b");
	if(fp==NULL){
		printf("Errore nell'apertura del file librettoFinale.bin\n");
		exit(1);
	}//if
	
	for(i=0; i<dl; i++){
		if(ea[i].voto>eb[i].voto){
			strcpy(eF[i].esame, ea[i].esame);
			eF[i].voto=ea[i].voto;
		}else{
			strcpy(eF[i].esame, eb[i].esame);
			eF[i].voto=eb[i].voto;
		}//if-lse
	}//for
	
	fwrite(eF, sizeof(Esito), dl, fp);
	
	
	for(i=0; i<dl; i++){
		printf("%s %d\n", eF[i].esame, eF[i].voto);
	}//for
	
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file librettoFinale.bin\n");
		exit(2);
	}//if
	
	
	return 0;
}//main
