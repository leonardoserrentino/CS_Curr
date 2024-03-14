#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "listaPersone.h"

int gg(int g, int m, int a) {
  // restituisce il numero di giorni trascorsi dal 1/1/4713 a.C alla data g/m/a
  int N0, N1, N2, N3;
  N0 = (m - 14) / 12;
  N1 = 1461 * (a + 4800 + N0) / 4;
  N2 = 367 * (m - 2 - 12 * N0) / 12;
  N3 = 3 * (a + 4900 + N0) / 400;
  return N1 + N2 - N3 + g - 32075;
}

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
		Data dd;
		dd.giorno=d.g;
		dd.mese=d.m;
		dd.anno=d.a;
		Persona p;
		strcpy(p.codFisc, d.codFisc);
		if((strcmp(d.evento, "T"))==0){
			p.t=1;
			p.dT=dd;
			p.v=0;
		}//if
		if((strcmp(d.evento, "V"))==0){
			p.v=1;
			p.dV=dd;
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

void stampaData(Lista l, FILE* fp, Data d){
	while(l){
		if(l->dato.t || l->dato.v){
			if(l->dato.t){
				if((gg(d.giorno, d.mese, d.anno)-gg(l->dato.dT.giorno, l->dato.dT.mese, l->dato.dT.anno))<=3){
					fprintf(fp, "%s ", l->dato.codFisc);
					if(l->dato.t){
						fprintf(fp, "tampone ");
					}//if
					if(l->dato.v){
						fprintf(fp, "vaccino");
					}//if
					fprintf(fp, "\n");
				}//if
			}else if(l->dato.v){
				if((gg(d.giorno, d.mese, d.anno)-gg(l->dato.dV.giorno, l->dato.dV.mese, l->dato.dV.anno))<=180){
					fprintf(fp, "%s ", l->dato.codFisc);
					if(l->dato.t){
						fprintf(fp, "tampone ");
					}//if
					if(l->dato.v){
						fprintf(fp, "vaccino");
					}//if
					fprintf(fp, "\n");
				}//if
			}//if-else if
		}//if
		l=l->next;
	}//while
}//stampaData
