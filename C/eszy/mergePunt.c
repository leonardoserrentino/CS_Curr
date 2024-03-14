#include <stdio.h>

void merge(int *pa, int *pb, int da, int db, int *pc){
	int i, j, c1=0, c2=0;
	for(i=0; i<da+db; i++){
		if(pa[c1]>pb[c2]){
			pc[i]=pb[c2];
			c2++;
			if(c2>db){
				for(j=i; j<da+db; j++){
					pc[j]=pa[c1];
					c1++;
				}//for
				break;
			}//if
		}else{
			pc[i]=pa[c1];
			c1++;
			if(c1>da){
				for(j=i; j<da+db; j++){
					pc[j]=pb[c2];
					c2++;
				}//for
				break;
			}//if
		}//if-else
	}//for
}//merge

void stampa(int *pa, int dl){
	int i;
	for(i=0; i<dl; i++){
		printf("%d ", pa[i]);
	}//for
	printf("\n");
}//stampa

int main(){
	int a[]={1,3,4,4,5}, b[]={0,1,4,6,7,8,9};
	int dla=5, dlb=7, dlc=dla+dlb, c[dla+dlb];
	merge(a,b,dla,dlb,c);
	stampa(c, dlc);
	return 0;
}//main
