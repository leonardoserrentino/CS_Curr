typedef struct nodo{
	int dato;
	struct nodo* next;
}Nodo;

typedef Nodo* Lista;

void stampa(Lista l);
void azzera(Lista l);
void inserisci();
void inizializza();
void reverse();
void elimina();
void insOrd();
