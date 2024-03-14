#include <stdio.h>
#include <stdlib.h>

int somma(FILE *fp){
	int n;
	if((fscanf(fp, "%d", &n))==1){
		return n+somma(fp);
	}else{
		return 0;
	}//if-else
}//somma

