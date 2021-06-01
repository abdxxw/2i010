#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

    int i,val,out;
    for(i=0;i<3;i++){
        val = fork();
        if(!val){
            sleep(5);
            exit(0);
        
        }else{
            printf("le pere a cree le fils %d\n",val);
        }
            
            
    }

    for(i=0;i<3;i++){
        out = wait(0); 
        printf("le fils %d est fini\n",out);
    }

    return 0;
}