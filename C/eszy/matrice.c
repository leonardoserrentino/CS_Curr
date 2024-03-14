#include <stdio.h>

int main(){
	char a[9][9], i, j;
	for(i=0; i<9; i++){
		for(j=0; j<9; j++){
			if(i==j || (i+j)==8){
				a[i][j]=' ';
			}else{
				a[i][j]='X';
			}//if-else
		}//for
	}//for
	
	for(i=0; i<9; i++){
		for(j=0; j<9; j++){
			printf("%c ", a[i][j]);
		}//for
		printf("\n");
	}//for
	
	return 0;
}//main
