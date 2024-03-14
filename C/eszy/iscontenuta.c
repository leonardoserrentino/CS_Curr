#include <stdio.h>
#define dim 10

int main(){
	char s[dim], sg[dim];
	int i=0, j=0;
	
	scanf("%s%s", s, sg);
	
	for(i=0; sg[i]!='\0'; i++){
		if(s[j]!='\0' && s[j]==sg[i]){
			j++;
		}//if
	}//for
	
	if(s[j]=='\0'){
		printf("Contenuta\n");
	}else{
		printf("Non contenuta\n");
	}//if-else

	return 0;
}//main
