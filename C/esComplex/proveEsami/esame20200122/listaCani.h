typedef struct{
	int chip;
	char evento[2];
}Record;

typedef struct{
	int chip;
	int vc;
	int ve;
	int vp;
	int vacc;
}Cane;

typedef struct nodo{
	Cane dato;
	struct nodo* next;
}Nodo;

typedef Nodo* Lista;

void inizializza();
void insTesta();
void aggiorna();
void stampa();
void stampaFile();
