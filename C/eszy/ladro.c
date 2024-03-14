#include <stdio.h>
#include <string.h>
#define DIM 20

typedef struct{
	char nome[DIM];
	int val;
}Pietra;

Pietra leggiPietra(){
	Pietra p;
	printf("Inserisci nome e valore della pietra\n");
	scanf("%s", p.nome);
	scanf("%d", &p.val);
	return p;
}//leggiPietra

void stampaPietra(int id, Pietra p){
	printf("%d: %s %d\n", id, p.nome, p.val);
}//stampaPietra

int inputArray(Pietra* pp){
	int i, j, q, dl=0;
	for(i=0; i<=DIM; i++){
		j=i;
		Pietra m=leggiPietra();
		if(m.val==0){
			break;
		}//if
		while(j>0 && m.val<pp[j-1].val){
			pp[j]=pp[j-1];
			j--;
		}//while
		pp[j]=m;
		dl++;
	}//for
	return dl;
}//inputArray

int main(){
	int dl, i, q;
	Pietra p[DIM+1];
	dl=inputArray(p);
	printf("Quante pietre riesci a portare con una sola mano? \n");
	scanf("%d", &q);
	for(i=1; i<=q; i++){
		stampaPietra(i, p[dl-i]);
	}//for
	return 0;
}//main
