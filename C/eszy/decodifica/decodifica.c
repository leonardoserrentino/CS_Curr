#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct{
	char lat[2];
	char ggg[4];
}Corrispondenza;

int main(){
	FILE *fp;
	Corrispondenza cor[100];
	int dlc, i, j;
	char l[4], ch;
	char parola[20];
	
	fp=fopen("corrispondenze.txt", "rt");
	if(fp==NULL){
		printf("Errore nell'apertura del file corrispondenze.txt\n");
		exit(1);
	}//if
	i=0;
	while((fscanf(fp, "%s%s", cor[i].lat, cor[i].ggg))==2){
		printf("%s %s\n", cor[i].lat, cor[i].ggg);
		i++;
	}//while
	dlc=i;
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file corrispondenze.txt\n");
		exit(2);
	}//if
	
	fp=fopen("messaggi.txt", "rt");
	if(fp==NULL){
		printf("Errore nell'apertura del file messaggi.txt\n");
		exit(1);
	}//if
	
	do{
		if((ch=(char)fgetc(fp))==' '){
			printf(" ");
		}else{
			l[0]=ch;
			l[1]=(char)fgetc(fp);
			l[2]=(char)fgetc(fp);
			l[3]='\0';
			for(i=0; i<dlc; i++){
				if(strcmp(l, cor[i].ggg)==0){
					printf("%s", cor[i].lat);
				}//if
			}//for
		}//if-else
	}while(!feof(fp));
	if(fclose(fp)!=0){
		printf("Errore nella chiusura del file messaggi.txt\n");
		exit(2);
	}//if
	
	printf("\n");
	scanf("%s", parola);
	while(strcmp(parola, "FINE")!=0){
		i=0;
		while(parola[i]!='\0'){
			for(j=0; j<dlc; j++){
				if(parola[i]==cor[j].lat[0]){
					printf("%s", cor[j].ggg);
				}//if
			}//for
			i++;
		}//while
		printf(" ");
		scanf("%s", parola);
	}//while
	return 0;
}//main
