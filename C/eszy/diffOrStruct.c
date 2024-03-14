#include <stdio.h>

int main(){
	int d;
	struct orario{
		int ora, min;
	}o1, o2, o3;
	do{
		scanf("%d%d%d%d", &o1.ora, &o1.min, &o2.ora, &o2.min);
	}while(o1.ora>24 && o2.ora>24 && o1.min>59 && o2.min>59);
	
	d=o2.min-o1.min;
	if(d<0){
		o3.min=60+d;
		o3.ora=o2.ora-o1.ora-1;
	}else{
		o3.min=d;
		o3.ora=o2.ora-o1.ora;
	}//if-else
	printf("%d:%d\n", o3.ora, o3.min);
	return 0;
}//main
