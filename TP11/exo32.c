#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "locks.h"




void prendre_ressource(char * fic){
    int buff;
deb : lock(fic);
    FILE * f = fopen(fic,"r+");
    fscanf(f,"%d\n",&buff);
    while(buff < 1) {
        unlock(fic);
        goto deb;
    }
    fseek(f,0,0);
    fprintf(f,"%d\n",buff-1);
    unlock(fic);
    fclose(f);
}


void rendre_ressource(char * fic){
    int buff;
    lock(fic);
    FILE * f = fopen(fic,"r+");
    fscanf(f,"%d\n",&buff);
    fseek(f,0,0);
    fprintf(f,"%d\n",buff+1);
    unlock(fic);
    fclose(f);
}

void usager(){
    printf("Arrivee de l’usager %d\n",getpid());
    prendre_ressource("/tmp/khra/c");
    prendre_ressource("/tmp/khra/p");
    rendre_ressource("/tmp/khra/c");
    printf("Usager %d se baigne\n",getpid());
    sleep(3);
    prendre_ressource("/tmp/khra/c");
    rendre_ressource("/tmp/khra/p");
    rendre_ressource("/tmp/khra/c");
    printf("fin de %d\n",getpid());
}

void lancement(){

    FILE * f1 = fopen("/tmp/khra/p","w");
    FILE * f2 = fopen("/tmp/khra/c","w");
    int i;

    fprintf(f1,"5\n");
    fprintf(f2,"3\n");

    fclose(f1);
    fclose(f2);

    for(i=0;i<7;i++){
        if(!fork()){
            usager();
            exit(0);
        }
    }
    for(i=0;i<7;i++)
        wait(0);

}

int main (int argc, char ** argv){

    lancement();
    return 0;
}
