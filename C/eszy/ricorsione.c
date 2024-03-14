#include <stdio.h>

int somma(int n){
	if(n==0){
		return 0;
	}else{
		return n+somma(n-1);
	}
}//fatt

int main(){
	int f;
	f=somma(4);
	printf("%d\n", f);

	return 0;
}//main
