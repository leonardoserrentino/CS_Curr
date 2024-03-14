#include <stdio.h>

void swap(int* pa, int* pb){
	int t;
	t=*pa;
	*pa=*pb;
	*pb=t;
}//swap

void ordina(int* pa, int* pb){
	if(*pa>*pb){
		swap(pa, pb);
	}//if
}//ordina

int main(){
	int a=5, b=2;
	ordina(&a,&b);
	printf("%d %d\n", a, b);
	return 0;
}//main
