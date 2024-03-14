#include <stdio.h>

int distribuzione(int n, int k){
	int b[n], i, j, c=0, count=0;
	for(i=0; i<n; i++){
		b[i]=i+1;
	}//for
	
	while(count!=1){
		for(j=0; j<k-1; j++){
			c++;
			if(c>n-1){
				c=0;
			}//if
			if(b[c]==0){
				j--;
			}//if
		}//for
	
		b[c]=0;
		c++;
		while(c>n-1 || b[c]==0){
			if(c>n-1){
				c=0;
			}//if
			if(b[c]==0){
				c++;
			}//if
		}//while
		
		count=0;
		for(i=0; i<n; i++){
			if(b[i]!=0){
				count++;
			}//if
		}//for
	}//while
	
	for(i=0; i<n; i++){
		if(b[i]!=0){
			return b[i];
		}//if
	}//for
}//distribuzione

int main(){
	int n, k;
	printf("Inserisci il numero di bambini ");
	scanf("%d", &n);
	printf("Inserisci il numero di bambini da saltare+1 ");
	scanf("%d", &k);
	printf("L'unico bambino rimasto senza e` %d\n", distribuzione(n, k));
	return 0;
}//main
