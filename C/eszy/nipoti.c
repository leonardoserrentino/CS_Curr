/*Questo programma cerca tra le possibili età di Franco, Carlo e Antonio
date le seguenti ipotesi:
* Carlo fra 13 anni avrà l'età di Franco quando aveva 7 volte l'età di Carlo
* Antonio ha 4 anni in più di Carlo e un anno in meno della differenza tra 
  Franco e Carlo
Soluzione: creo un ciclo fino a 100/7, perchè al massimo Franco ha 100 anni
		   e incremento l'età ipotetica di Carlo da giovane, mi ricavo così 
		   l'età che aveva Franco al tempo e le trasporto al tempo presente 
		   tramite la congettura "Carlo tra 13 anni avra l'età di Franco 
		   quando aveva 7 volte l'età di Carlo" calcolandomi gli anni passati
		   da quel momento. Pongo la condizione di Antonio su Carlo e Franco
		   al tempo presente ed esco dal ciclo con i dati correnti se la 
		   condizione risulta vera.
Metodo utilizzato: BruteForce*/

//Autore: Leonardo Serrentino
//Data 26/11/2021
//Luogo: Padova

#include <stdio.h>

int main(){
	int i, cg, co, fg, fo, annipassati;
	
	for(i=1; i<=(100/7); i++){
		cg=i;
		fg=cg*7;
		co=fg-13;
		annipassati=co-cg;
		fo=fg+annipassati;
		if(co+4==fo-co-1){
			break;
		}//if
	}//for
	
	printf("Franco: %d\nCarlo: %d\nAntonio:%d\n", fo, co, co+4/*ao*/);
	
	return 0;
}//main
