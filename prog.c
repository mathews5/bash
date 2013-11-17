#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
    int tab[3];
    int j=0;
    int *ptr=&tab[3];
    int *prt=&tab[4];
    for(;j<3;j++) 
	tab[j]=5;
    *(tab+1)=3;
    *(ptr-1)=3;
    printf("%d\t%d\t%d\t%d\t%d\n",tab[0],tab[1],tab[2],tab[3],tab[4]);
    printf("*ptr=%d\tptr=%p\t&tab[2]=%p\n",*ptr,ptr,&tab[2]);
    return 0;
};
