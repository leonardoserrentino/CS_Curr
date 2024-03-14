#include <stdio.h>
#include <stdlib.h>

typedef struct{
	char nome[10];
	int stipendio;
}Dipendente;

int main(){
	Dipendente d;
	int t;
	FILE *fp;
	fp=fopen("stipendi.dat", "r+b");
	
	while(fread(&d, sizeof(Dipendente), 1, fp)==1){
		if(d.stipendio<1000){
			d.stipendio=d.stipendio+(d.stipendio/10);
			fseek(fp, -(long)sizeof(Dipendenti), SEEK_CUR);
			fwrite(&d, sizeof(Dipendente), 1, fp);
			fseek(fp, 0, SEEK_CUR);
		}//if
	}//while
	
	return 0;
}//main
