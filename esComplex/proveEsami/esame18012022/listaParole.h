typedef struct{
	char parola[31];
	int cont;
}Parola;

typedef struct nodo{
	Parola dato;
	struct nodo* next;
}Nodo;

typedef Nodo* Lista;

void inizializza();
void aggiorna();
void stampa();
