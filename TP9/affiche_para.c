#include <stdio.h>

int main(int argc,char * argv[]){

    int i;
    printf("nom: %s , nb par : %d \n",argv[0],argc-1);
    if(argc >=2){
        printf("parametres :\n");
        for(i=1;i<argc;i++)
            printf("%s\n",argv[i]);

    }

    return 0;
}