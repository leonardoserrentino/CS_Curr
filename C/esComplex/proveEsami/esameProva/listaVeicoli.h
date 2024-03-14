typedef struct{
	char targa[8];
	float sosta;
}Record;

typedef struct{
	char targa[8];
	int accessi;
}Veicolo;

typedef struct nodo{
	Veicolo dato;
	struct nodo* next;
}Nodo;

typedef Nodo* Lista;

void inizializza();
void aggiorna();
void stampa();
void ultimi();
