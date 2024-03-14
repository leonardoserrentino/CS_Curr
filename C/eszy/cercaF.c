#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct{
	char nome[31];
	char cognome[31];
	char sesso[2];
	int an;
}Persona;

int main(){
	Persona p[100];
	int dl=0, i;
	char c[31];
	FILE *fp;
	fp=fopen("people.txt", "rt");
	if(fp==NULL){
		printf("Errore nell'apertura del file\n");
		exit(1);
	}//if
	
	while(fscanf(fp, "%s%s%s%d", p[dl].nome, p[dl].cognome, p[dl].sesso, &p[dl].an)==4){
		dl++;
	}//while
	
	scanf("%s", c);
	for(i=0; i<dl; i++){
		if(strcmp(p[i].nome, c)==0){
			printf("%s %s %s %d\n", p[i].nome, p[i].cognome, p[i].sesso, p[i].an);
		}//if
	}//for
	
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file\n");
		exit(2);
	}//if
	
	return 0;
}//main
