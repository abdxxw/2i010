#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

    if(!fork()){
        if(!fork()){
            if(!fork()){
                sleep(5);
                exit(0);
            }
            sleep(5);
            printf("l arriere pti fils %d est fini\n",wait(0));
            exit(0);
        }
                sleep(5);
            printf(" pti fils %d est fini\n",wait(0));
            exit(0);
    }
    printf("le fils %d est fini\n",wait(0));
    
    return 0;
}