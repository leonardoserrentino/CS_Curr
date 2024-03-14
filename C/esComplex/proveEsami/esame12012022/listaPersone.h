typedef struct{
	int giorno;
	int mese;
	int anno;
	char codFisc[17];
	char evento[2];
}Dato;

typedef struct{
	char codFisc[17];
	int t;
	int v;
}Persona;

typedef struct nodo{
	Persona dato;
	struct nodo* next;
}Nodo;

typedef Nodo* Lista;
void inizializza();
void insTesta();
void aggiorna();
void stampa();
