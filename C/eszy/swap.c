#include <stdio.h>

void swap(int* pa, int* pb){
	int t;
	t=*pa;
	*pa=*pb;
	*pb=t;
}//swap

int main(){
	int a=2, b=3;
	swap(&a,&b);
	printf("%d %d\n", a, b);
	
	return 0;
}//main
