#include <stdio.h>
#include <string.h>

typedef struct{
	char nome[20];
	char cognome[20];
	int eta;
}Persona;

Persona inserisciPersona(){
	Persona p;
	scanf("%s", p.nome);
	scanf("%s", p.cognome);
	scanf("%d", &p.eta);
	return p;
}//inserisciPersona

int isMinore(Persona p1, Persona p2){
	return p1.eta<p2.eta;
}//isMinore

void stampaPersona(Persona p){
	printf("%s %s, età %d\n", p.nome, p.cognome, p.eta);
}//stampaPersona

int main() {
	Persona pers[5], m;
	int i, j;
	
	/*inserimento ordinato per Persona.eta*/
	for(i=0; i<5; i++){
		int j;
		m=inserisciPersona();
		j=i;
		while(j>0 && isMinore(m, pers[j-1])){
			pers[j]=pers[j-1];
			j--;
		}//while
		pers[j]=m;
	}//for
	
	for(i=0; i<5; i++){
		stampaPersona(pers[i]);
	}//for
	return 0;
}//main
