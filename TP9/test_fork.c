#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc,char * argv[]){


    int x = fork();
    if (x == 0)
        printf("je suis le fils\n");
    else
        printf("je suis le pere, mon fils a l’identifiant : %d \n",x);

    sleep(30);
}