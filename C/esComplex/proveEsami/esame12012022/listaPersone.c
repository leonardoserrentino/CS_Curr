#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "listaPersone.h"

void inizializza(Lista* pl){
	*pl=NULL;
}//inizializza

void insTesta(Lista* pl, Persona p){
	Nodo* aux=(Nodo*)malloc(sizeof(Nodo));
	(*aux).dato=p;
	(*aux).next=*pl;
	*pl=aux;
}//insTesta

void aggiorna(Lista* pl, Dato d){
	while(*pl && (strcmp((*pl)->dato.codFisc, d.codFisc))<0){
		pl=&(*pl)->next;
	}//while
	if(*pl && (strcmp((*pl)->dato.codFisc, d.codFisc))==0){
		if((strcmp(d.evento, "T"))==0){
			(*pl)->dato.t=1;
		}//if
		if((strcmp(d.evento, "V"))==0){
			(*pl)->dato.v=1;
		}//if
	}else{
		Persona p;
		strcpy(p.codFisc, d.codFisc);
		if((strcmp(d.evento, "T"))==0){
			p.t=1;
			p.v=0;
		}//if
		if((strcmp(d.evento, "V"))==0){
			p.v=1;
			p.t=0;
		}//if
		insTesta(pl, p);
	}//if-else
}//aggiorna

void stampa(Lista l, FILE* fp){
	while(l){
		if(l->dato.t || l->dato.v){
			fprintf(fp, "%s ", l->dato.codFisc);
			if(l->dato.t){
				fprintf(fp, "tampone ");
			}//if
			if(l->dato.v){
				fprintf(fp, "vaccino");
			}//if
			fprintf(fp, "\n");
			l=l->next;
		}//if
	}//while
}//stampa
