#include <stdio.h>
#include <stdlib.h>

void codifica(FILE *fp, int key){
	char f[20], p[20], t;
	int i=0;
	printf("File su cui scrivere ");
	scanf("%s", f);
	fp=fopen(f, "wt");
	if(fp==NULL){
		printf("Errore nell'apertura del file\n");
	}//if
	
	printf("Parola da codificare: ");
	scanf("%s", p);
	while(p[i]!='\0'){
		t=p[i++]+key;
		fprintf(fp, "%c", t);
	}//while
	fprintf(fp, "\n");
	fclose(fp);
}//codifica

void decodifica(FILE *fp, int key){
	char f[20], t, c;
	printf("File da cui leggere ");
	scanf("%s", f);
	fp=fopen(f, "rt");
	if(fp==NULL){
		printf("Errore nell'apertura del file\n");
	}//if
	
	while(feof(fp)==0){
		t=fgetc(fp);
		c=t-key;
		putchar(c);
	}//while
	printf("\n");
	fclose(fp);
}//decodifica
