#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void my_system(char * cmd){

    if(!fork()) {// fils
        execlp(cmd,cmd,NULL);
        printf("Erreur \n");
    }else
        wait(0);
}


int main (int argc, char ** argv){

    my_system("./a");
    return 0;
}

