#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "listaCani.h"

void inizializza(Lista* pl){
	*pl=NULL;
}//inizializza

void insTesta(Lista* pl, Cane c){
	Nodo* aux=(Nodo*)malloc(sizeof(Nodo));
	(*aux).dato=c;
	(*aux).next=*pl;
	*pl=aux;
}//insTesta

void analizza(Cane* c, Record r){
	if((strcmp(r.evento, "C"))==0){
		(*c).vc=1;
	}else if((strcmp(r.evento, "E"))==0){
		(*c).ve=1;
	}else if((strcmp(r.evento, "P"))==0){
		(*c).vp=1;
	}else{
		printf("%s non e` un evento valido\n", r.evento);
	}//if-else
}//analizza

void aggiorna(Lista* pl, Record r){
	while(*pl && (*pl)->dato.chip!=r.chip){
		pl=&(*pl)->next;
	}//while
	if(*pl && (*pl)->dato.chip==r.chip){
		analizza(&(*pl)->dato, r);
	}else{
		Cane cc;
		cc.chip=r.chip;
		cc.vc=0;
		cc.ve=0;
		cc.vp=0;
		analizza(&cc, r);
		insTesta(pl, cc);
	}//if-else
}//aggiorna

void stampa(Lista l){
	while(l){
		printf("%d: ", l->dato.chip);
		if(l->dato.vc==0){
			printf("cimurro ");
		}//if
		if(l->dato.ve==0){
			printf("epatite ");
		}//if
		if(l->dato.vp==0){
			printf("parvovirosi ");
		}//if
		printf("\n");
		l=l->next;
	}//while
}//stampa

Lista* ricerca(Lista* pl, Cane cc){
	while(*pl){
		if((*pl)->dato.vacc<=cc.vacc){
			if((*pl)->dato.vacc==cc.vacc){
				if((*pl)->dato.chip>cc.chip){
					break;
				}//if
			}else{
				break;
			}//if-else
		}//if
		pl=&(*pl)->next;
	}//while
	return pl;
}//ricerca

void insOrd(Lista* pl, Cane c){
	pl=ricerca(pl, c);
	insTesta(pl, c);
}//insOrd

void resumeVaccini(Cane* cc){
	int c=0;
	if((*cc).vc){
		c++;
	}//if
	if((*cc).ve){
		c++;
	}//if
	if((*cc).vp){
		c++;
	}//if
	(*cc).vacc=c;
}//resumeCane

void stampaFile(Lista l){
	Lista l2;
	inizializza(&l2);
	while(l){
		resumeVaccini(&l->dato);
		insOrd(&l2, l->dato);
		l=l->next;
	}//while
	FILE* fp;
	fp=fopen("vaccini.txt", "wt");
	while(l2){
		fprintf(fp, "%d\n", l2->dato.chip);
		l2=l2->next;
	}//while
	fclose(fp);
}//stampaCani
