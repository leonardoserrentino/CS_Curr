#include <stdio.h>
#include <stdlib.h>
#include "funzioni.h"

void inizializza(Lista *l){
	*l=NULL;
}//crea

int stampaNodo(Nodo n){
	return n.dato;
}//stampaNodo

void stampa(Lista l){
	while(l){
		printf("%d\n", (*l).dato);
		l=(*l).next;
	}//while
}//stampa

void azzera(Lista l){
	while(l){
		(*l).dato=0;
		l=(*l).next;
	}//while
}//azzera

void inserisci(Lista *l, int n){
	Nodo *aux=(Nodo*)malloc(sizeof(Nodo));
	(*aux).dato=n;
	(*aux).next=*l;
	*l=aux;
}//inserisci

void elimina(Lista *pl){
	if(*pl==NULL){
		printf("Lista vuota\n");
		exit(1);
	}//if
	Nodo *aux=(Nodo*)malloc(sizeof(Nodo));
	aux=*pl;
	*pl=(*(*pl)).next;
	free(aux);
}//elimina

void reverse(Lista l1, Lista *pl2){
	inizializza(pl2);
	while(l1){
		inserisci(pl2, (*l1).dato);
		l1=(*l1).next;
	}//while
}//reverse

Lista* ricerca(Lista *pl, int n){
	while(*pl){
		if((*pl)->dato>=n){
			break;
		}//if
		pl=&(*pl)->next;
	}//while
	return pl;
}//ricerca

void insOrd(Lista *pl, int d){
	pl=ricerca(pl, d);
	inserisci(pl, d);
}//insOrd
