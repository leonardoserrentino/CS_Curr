#include <stdio.h>
#include <string.h>

typedef struct{
	int day, month, year;
}Data;//Data

typedef struct{
	char name[30];
	Data birth;
}Persona;//Persona

int isBisestile(int y){
	if(y%4==0 && y%100!=0 || y%400==0){
		return 1;
	}else{
		return 0;
	}//if-else
}//control

int control(Data d){
	if(d.month==1 || d.month==3 || d.month==5 || d.month==7 || d.month==8 || d.month==10 || d.month==12){
		return d.day<=31;
	}else if(d.month==4 || d.month==6 || d.month==9 || d.month==11){
		return d.day<=30;
	}else if(d.month==2){
		return isBisestile(d.year) && d.day<=29 || d.day<=28;
	}else{
		return 0;
	}//if-esle
}//control

int isSameDate(Data a, Data b){
	return (a.day==b.day && a.month==b.month || a.day==1 && a.month==3 && b.day==29 && b.month==2);
}//isSameDate

int main(){
	Persona p;
	Data o;
	
	/*Dati di p*/
	printf("Inserisci il tuo nome\n");
	scanf("%s", p.name);
	do{
		printf("Che giorno sei nato?\n");
		scanf("%d%d%d", &p.birth.day, &p.birth.month, &p.birth.year);
		/*controllo se data inserita è accettabile*/
		if(!control(p.birth)){
			printf("Data non valida. Inserire nuovamente\n");
		}//if	
	}while(!control(p.birth));

	/*Data di oggi*/
	do{
		printf("Che giorno è oggi?\n");
		scanf("%d%d%d", &o.day, &o.month, &o.year);
		/*controllo se data inserita è accettabile*/
		if(!control(o)){
			printf("Data non valida. Inserire nuovamente\n");
		}//if
	}while(!control(o));

	if(isSameDate(o, p.birth)){
		printf("Auguri %s!!!\n", p.name);
	}//if
	return 0;
}//main
