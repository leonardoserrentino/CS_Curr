#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void inVar(int* pn, int* pk){
	int n, k;
	do{
		printf("n\n");
		scanf("%d", &n);
	}while(n>100 || n<0);
	*pn=n;
	do{
		printf("k\n");
		scanf("%d", &k);
	}while(k>n || k<0);
	*pk=k;
}//inVar

void inArray(int* pa, int n, int k){
	int i;
	srand(time(NULL));
	for(i=0; i<n; i++){
		pa[i]=rand()%k;
	}//for
	pa[i+1]=101;
}//inArray

int length(int* pa){
	int l=0;
	while(pa[l]!=101){
		l++;
	}//while
	return l;
}//length

void occorrenze(int* pa){
	int n=length(pa), i, j, f=0, c, mf;
	for(i=0; i<n; i++){
		c=0;
		for(j=0; j<n; j++){
			if(pa[i]==pa[j]){
				c++;
			}//if
		}//for
		if(c>f){
			f=c;
			mf=pa[i];
		}//if
	}//for
	printf("Il più frequente è %d e si ripete %d volte\n", mf, f);
}//occorrenze

int main(){
	int n, k;
	inVar(&n,&k);
	int a[n];
	inArray(a, n, k);
	occorrenze(a);
	
	return 0;
}//main
