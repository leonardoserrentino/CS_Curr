#include <stdio.h>
#include <string.h>
#define dim 100

void leggi(char* ps){
	scanf("%s", ps);
}//leggi

int rimuoviDuplicati(char* pa, char* pb){
	int i, j, c, e=0, dl=0;
	char new[dim];
	for(i=0; i<strlen(pa); i++){
		c=0;
		for(j=0; j<strlen(pb); j++){
			if(pa[i]==pb[j]){
				c++;
			}//if
		}//for
		if(c==0){
			new[dl]=pa[i];
			dl++;
		}else{
			e++;
		}//if-else
	}//for
	
	strcpy(pa, new);
	return e;
}//rimuoviDuplicati

int main(){
	char c1[dim], c2[dim];
	leggi(c1);
	leggi(c2);
	printf("%d, %s\n", rimuoviDuplicati(c1, c2), c1);
	
	return 0;
}//main
