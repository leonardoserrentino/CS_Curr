#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "listaVeicoli.h"

void inizializza(Lista* pl){
	*pl=NULL;
}//inizializza

void insTesta(Lista* pl, Veicolo v){
	Nodo* aux=(Nodo*)malloc(sizeof(Nodo));
	(*aux).dato=v;
	(*aux).next=*pl;
	*pl=aux;
}//insTesta

void aggiorna(Lista* pl, Record r){
	while(*pl && (strcmp((*pl)->dato.targa, r.targa))!=0){
		pl=&(*pl)->next;
	}//while
	if(*pl && (strcmp((*pl)->dato.targa, r.targa))==0){
		((*pl)->dato.accessi)++;
	}else{
		Veicolo v;
		strcpy(v.targa, r.targa);
		v.accessi=1;
		insTesta(pl, v);
	}//if-else
}//aggiorna

void stampa(Lista l){
	while(l){
		if((l->dato.accessi)<=5){
			printf("%s %.2f\n", l->dato.targa, (l->dato.accessi)*2.00);
		}else if((l->dato.accessi)<=10){
			printf("%s %.2f\n", l->dato.targa, (l->dato.accessi)*1.90);
		}else{
			printf("%s %.2f\n", l->dato.targa, (l->dato.accessi)*1.80);
		}//if-else
		l=l->next;
	}//while
}//stampa

void reverse(Lista l, Lista* pl2){
	inizializza(pl2);
	while(l){
		insTesta(pl2, l->dato);
		l=l->next;
	}//while
}//reverse

void ultimi(char f[]){
	FILE* fp;
	fp=fopen(f, "rb");
	Lista l1;
	Record r;
	Veicolo v;
	inizializza(&l1);
	while(fread(&r, sizeof(Record), 1, fp)){
		strcpy(v.targa, r.targa);
		insTesta(&l1, v);
	}//while
	fclose(fp);
	fp=fopen("ultimi3.txt", "wt");
	for(int i=0; i<3; i++){
		fprintf(fp, "%s\n", l1->dato.targa);
		l1=l1->next;
	}//for
	fclose(fp);
}//ultimi
