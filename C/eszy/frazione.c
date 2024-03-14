#include <stdio.h>

typedef struct{
	int num;
	int den;
}Frazione;

Frazione leggiFrazione(){
	Frazione f;
	scanf("%d%d", &f.num, &f.den);
	return f;
}//allocaFrazione

void stampaFrazioneStr(Frazione f){
	printf("Stringa: %d/%d\n", f.num, f.den);
}//stampaFrazSr

float frazioneDec(Frazione f){
	return (float)f.num/f.den;
}//stampaFrazioneDec

int min(int a, int b){
	if(a<b){
		return a;
	}else{
		return b;
	}//if-else
}//max

int maxComDiv(int a, int b){
	int i;
	int m=1;
	for(i=1; i<=min(a,b); i++){
		if(a%i==0 && b%i==0){
			m=i;
		}//if
	}//for
	return m;
}//minComDen

Frazione semplifica(Frazione f){
	Frazione g;
	int m=maxComDiv(f.num, f.den);
	g.num=(f.num/m);
	g.den=(f.den/m);
	return g;
}//semplifica

float somma(Frazione a, Frazione b){
	Frazione o;
	o.num=a.num*b.den+b.num*a.den;
	o.den=a.den*b.den;
	return frazioneDec(o);
}//somma

float sottrazione(Frazione a, Frazione b){
	Frazione o;
	o.num=a.num*b.den-b.num*a.den;
	o.den=a.den*b.den;
	return frazioneDec(o);
}//sottrazione

float moltiplicazione(Frazione a, Frazione b){
	Frazione o;
	o.num=a.num*b.num;
	o.den=a.den*b.den;
	return frazioneDec(o);
}//moltiplicazione

float divisione(Frazione a, Frazione b){
	Frazione o;
	o.num=a.num*b.den;
	o.den=a.den*b.num;
	return frazioneDec(o);
}//divisione

int main(){
	/*Utilizo delle funzioni su inserimento Frazione da tastiera*/
	Frazione f=leggiFrazione();
	stampaFrazioneStr(semplifica(f));
	printf("%f\n", frazioneDec(f));
	
	/*Richiesta due Frazioni per operazione*/
	printf("Inserisci la prima frazione\n");
	Frazione f1=leggiFrazione();
	printf("Inserisci la seconda frazione\n");
	Frazione f2=leggiFrazione();
	int o=1;
	printf("Seleziona l'operazione da compiere:\n 1: Somma\n 2: Sottrazione\n 3: Moltiplicazione\n 4: Divisione\n");
	do{
		if(o<1 || o>4){
			printf("Inserire solo l'ID di una delle quattro operazioni disponibili\n");
		}//if
		scanf("%d", &o);
	}while(o<1 || o>4);
	
	switch(o){
		case 1:
			printf("%f\n", somma(f1, f2));
			break;
		case 2:
			printf("%f\n", sottrazione(f1, f2));
			break;
		case 3:
			printf("%f\n", moltiplicazione(f1, f2));
			break;
		case 4:
			printf("%f\n", divisione(f1, f2));
			break;
	}//switch
	
	return 0;
}//main
