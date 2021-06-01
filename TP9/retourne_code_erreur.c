#include <stdio.h>

int main(int argc,char * argv[]){

    int i;
    if(argc != 3){
        printf("Erreur nb par \n");
        return 1;
    }
    for(i=1;i<argc;i++)
        printf("%s\n",argv[i]);
        
    return 0;
    
}