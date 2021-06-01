#include <stdio.h>

int main(int argc,char * argv[]){

    int x,y;

    if(argc != 3)
        printf("Erreur nb par \n");
    else if(!isdigit(argv[1][0]) || !isdigit(argv[2][0]))
        printf("Erreur format\n");
    else{
        x=atoi(argv[1]);
        y=atoi(argv[2]);
        printf("%d\n",x+y);
    }

    return 0;
}