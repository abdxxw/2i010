#include <stdio.h>
#include <stdlib.h>

int main(int argc,char * argv[]){


    setenv("TOTO","42",1);
    printf("%s\n",getenv("TOTO"));
    system("echo $$: $TOTO ");
    printf("%d\n",getpid());
    system("xterm");
    return 0;
}