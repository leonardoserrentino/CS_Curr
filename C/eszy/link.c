#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

typedef struct{
	char con[29];
	char va[4], vb[5], vc[4];
}Link;

Link generaLink(){
	srand(time(0));
	Link l;
	strcpy(l.con,"https://www.meet.google.com/");
	int i;
	for(i=0; i<3; i++){
		l.va[i]=(char)((rand()%25)+97);
	}//for
	l.va[3]='\0';
	for(i=0; i<4; i++){
		l.vb[i]=(char)((rand()%25)+97);
	}//for
	l.vb[4]='\0';
	for(i=0; i<3; i++){
		l.vc[i]=(char)((rand()%25)+97);
	}//for
	l.vc[3]='\0';
	return l;
}//generaLink

int main(){
	Link l;
	l=generaLink();
	printf("%s%s-%s-%s\n", l.con, l.va, l.vb, l.vc);
}//main
