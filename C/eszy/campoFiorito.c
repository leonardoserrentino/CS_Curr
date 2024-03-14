/*Campo Fiorito by Leonardo Serrentino
Creato il tra il 2 e il 3 dicembre del 2021 02/12/2021 a Padova
Per cambiare la difficolta di gioco agire sulle macro colonne righe probmina
(probmina deve essere compreso tra 0.0 e 1.0)
Primo anno del corso di Informatica di Unife, esame di Programmazione
e Laboratorio di C, professor Marco Alberti*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define NRIGHE 10
#define NCOLONNE 8
#define PROBMINA 0.3

/*Struttura Casella contenente l'indicazione binaria se e coperta o meno
se e una mina o meno, la sua posizione nel campo di gioco (matrice a due dimensioni)*/
typedef struct{
	int coperta;
	int riga;
	int colonna;
	char mina;
}Casella;

/*Indica quante Caselle hanno il campo mina impostato su* adiacenti alla
casella individuata da r e c*/
int mineAdiacenti(Casella (*pc)[NCOLONNE], int r, int c){
	int ma=0;
	if(c>0){
		if(pc[r][c-1].mina=='*'){
			ma++;
		}//if
	}//if
	if(c<(NCOLONNE-1)){
		if(pc[r][c+1].mina=='*'){
			ma++;
		}//if
	}//if
	if(pc[r-1][c].mina=='*'){
		ma++;
	}//if
	if(pc[r+1][c].mina=='*'){
		ma++;
	}//if
	return ma;
}//mineAdiacenti

/*inizializza crea una matrice di gioco utilizzando un assegnamento
casuale del campo mina se vuoto o '*' in base a time(NULL) e a probmina*/
void inizializza(Casella (*pc)[NCOLONNE]){
	int i, j;
	double p;
	srand(time(NULL));
	for(i=0; i<NRIGHE; i++){
		for(j=0; j<NCOLONNE; j++){
			p=(double)rand()/RAND_MAX;
			if(p<=PROBMINA){
				pc[i][j].mina='*';
			}else{
				pc[i][j].mina=' ';
			}//if-else
			pc[i][j].colonna=j;
			pc[i][j].riga=i;
			pc[i][j].coperta=0;
		}//for
	}//for
}//inizializza

/*stampa a video la matrice di gioco utilizzando il # se il campo 
coperta e true. Altrimenti stampa il contenuto della Casella*/
void stampa(Casella (*pc)[NCOLONNE]){
	int i, j;
	for(i=0; i<NRIGHE; i++){
		for(j=0; j<NCOLONNE; j++){
			if(pc[i][j].coperta){
				printf("#|");
			}else{
				if(pc[i][j].mina=='*'){
					printf("%c|", pc[i][j].mina);
				}else{
					printf("%d|", mineAdiacenti(pc, i, j));
				}//else
			}//if-else
		}//for
		printf("\n");
	}//for
}//stampa

/*prende la matrice di gioco in entrata e la trasforma in una matrice
completamente coperta, alias Nuova Partita*/
void setPartita(Casella (*pc)[NCOLONNE]){
	int i, j;
	for(i=0; i<NRIGHE; i++){
		for(j=0; j<NCOLONNE; j++){
			pc[i][j].coperta=1;
		}//for
	}//for
}//setPartita

/*Richiede al giocatore di selezionare una riga e una colonna e setta il 
parametro coperta della casella selezionata su true*/
int scopri(Casella (*pc)[NCOLONNE]){
	int r, c;
	printf("Inserisci Riga ");
	scanf("%d", &r);
	printf("Inserisci Colonna ");
	scanf("%d", &c);
	pc[r][c].coperta=0;
	return pc[r][c].mina=='*';
}//scopri

/*Effettua un controllo sulla matrice di gioco corrente e ritorna 1 se
il numero di caselle "scoperte" e uguale al numero di caselle senza mina,
decretando quindi la fine della partita, altrimenti ritorna 0, ovvero
che non e ancora finita*/
int controllo(Casella (*pc)[NCOLONNE]){
	int i, j, c1=0, c2=0;
	for(i=0; i<NRIGHE; i++){
		for(j=0; j<NCOLONNE; j++){
			if(!pc[i][j].coperta){
				c1++;
			}//if
			if(pc[i][j].mina!='*'){
				c2++;
			}//if
		}//for
	}//for
	return c1==c2;
}//controllo

/*partita e un ciclo che, dopo aver inizializzato la matrice di gioco
e aver settato la matrice per una nuova partita, continua a stampare
finche il controllo decreta che ci sono ancora caselle da scoprire valide;
se la casella scoperta dal giocatore e una mina ritorna 1, altrimenti,
se anche controllo fa uscire dal ciclo senza aver trovato una mina,
ritorna 0*/
int partita(Casella (*pc)[NCOLONNE]){
	int c;
	while(!controllo(pc)){
		stampa(pc);
		c=scopri(pc);
		if(c){
			return 1;
		}
	}//while
	return 0;
}//partita

int main(){
	Casella c[NRIGHE][NCOLONNE];
	
	inizializza(c);
	stampa(c);
	setPartita(c);
	printf("\n");
	
	int p=partita(c);
	if(p){
		stampa(c);
		printf("Hai perso :/\n");
	}else{
		stampa(c);
		printf("Hai vinto :)\n");
	}//if-else
	
	return 0;
}//main
