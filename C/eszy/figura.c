#include <stdio.h>
#include <stdlib.h>
#include <math.h>

//Definisco un tipo enumerativo per rendere più leggibile il codice
typedef enum{
	quadrato,
	cerchio,
	rettangolo,
	triangolo
}Tipo;

//Definisco una union co in vari possibili dati delle figure, ogni
//tipo di dato e' una struct contenente i dati necessari a ricreare 
//quella figura. Sarebbe più corto scrivere meno struct è più leggibile così
typedef union{
	struct{
		float lato;
	}datiQuadrato;
	
	struct{
		float raggio;
	}datiCerchio;
	
	struct{
		float base;
		float altezza;
	}datiRettangolo;
	
	struct{
		float base;
		float altezza;
	}datiTriangolo;
}Dati;

//Definisco la struttura Figura contenente il tipo di figura e i dati
//associati ad essa. Per leggerli da tastiera dovrò creare tante funzioni 
//quanti sono i tipi da gestire, mentre per operare sui dati bastera
//fare degli switch che differiscano tra i vari tipi Tipo e fare operazioni
//differenti
typedef struct{
	Tipo t;
	Dati d;
}Figura;

void leggiQuadrato(Figura *pf, float l){
	(*pf).t=quadrato;
	(*pf).d.datiQuadrato.lato=l;
}//leggiQuadrato

void leggiCerchio(Figura *pf, float r){
	(*pf).t=cerchio;
	(*pf).d.datiCerchio.raggio=r;
}//leggiCerchio

void leggiRettangolo(Figura *pf, float b, float a){
	(*pf).t=rettangolo;
	(*pf).d.datiRettangolo.base=b;
	(*pf).d.datiRettangolo.altezza=a;
}//leggiRettangolo

void leggiTriangolo(Figura *pf, float b, float a){
	(*pf).t=triangolo;
	(*pf).d.datiTriangolo.base=b;
	(*pf).d.datiTriangolo.altezza=a;
}//leggiTriangolo

float area(Figura f){
	switch(f.t){
		case quadrato:
			return f.d.datiQuadrato.lato*f.d.datiQuadrato.lato;
		case cerchio:
			return f.d.datiCerchio.raggio*f.d.datiCerchio.raggio*3.14159265;
		case rettangolo:
			return f.d.datiRettangolo.base*f.d.datiRettangolo.altezza;
		case triangolo:
			return (f.d.datiRettangolo.base*f.d.datiRettangolo.altezza)/2.0;
	}//switch
}//area

float perimetro(Figura f){
	switch(f.t){
		case quadrato:
			return f.d.datiQuadrato.lato*4.0;
		case cerchio:
			return f.d.datiCerchio.raggio*2.0*3.14159265;
		case rettangolo:
			return (f.d.datiRettangolo.base+f.d.datiRettangolo.altezza)*2.0;
	}//switch
}//perimetro

int main(){
	Figura f;
	leggiQuadrato(&f, 5.0);
	printf("%.2f %.2f\n", area(f), perimetro(f));
	leggiCerchio(&f, 5.0);
	printf("%.2f %.2f\n", area(f), perimetro(f));
	leggiRettangolo(&f, 4.0, 5.0);
	printf("%.2f %.2f\n", area(f), perimetro(f));
	leggiTriangolo(&f, 4.0, 5.0);
	printf("%.2f\n", area(f));
	
	return 0;
}//main
