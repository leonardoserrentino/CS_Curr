#include <stdio.h>

int main(){
	int i=0;
	int alpha=28;
	int mu=6;
	int k=0, lambda=0;
	int tg=0, te=0;
	int coda;
	printf("t=tempo, GT=GeneratiTotali, GA=GeneratiAdesso, DC=DimensioneCoda, ET=ElaboratiTotali, EA=ElaboratiAdesso\n");
	printf("t\tGT\tGA\tDC\tET\tEA\n");
	for(i=0; i<20; i++){
		lambda=(int)alpha/(k+1);
		coda=k;
		k+=lambda;
		k-=mu;
		tg+=lambda;
		te+=mu;
		printf("%d\t%d\t%d\t%d\t%d\t%d\n", i, tg, lambda, coda, te, mu);
	}
	return 0;
}
