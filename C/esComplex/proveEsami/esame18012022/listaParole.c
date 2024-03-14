#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "listaParole.h"

void inizializza(Lista* pl){
	*pl=NULL;
}//inizializza

void insTesta(Lista* pl, Parola p){
	Nodo* aux=(Nodo*)malloc(sizeof(Nodo));
	(*aux).dato=p;
	(*aux).next=*pl;
	*pl=aux;
}//insTesta

void aggiorna(Lista* pl, char p[]){
	while(*pl && (strcmp((*pl)->dato.parola, p))!=0 && strlen((*pl)->dato.parola)>=strlen(p)){
			pl=&(*pl)->next;
	}//while
	//In tabella ASCII le maiuscole e le minuscole differiscono di 32 caratteri
	if(*pl && (strcmp((*pl)->dato.parola, p))==0 || *pl && (int)(*pl)->dato.parola[0]==(int)32+p[0] || *pl && (int)(*pl)->dato.parola[0]==(int)p[0]-32){
		(*pl)->dato.cont++;
	}else{
		Parola pp;
		pp.cont=1;
		strcpy(pp.parola, p);
		insTesta(pl, pp);
	}//if-else
}//aggiorna

void stampa(Lista l){
	while(l){
		if(l->dato.cont>=4){
			printf("%s %d\n", l->dato.parola, l->dato.cont);
		}//if
		l=l->next;
	}//while
}//stampa


