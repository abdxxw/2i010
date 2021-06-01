#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
        if (argc <= 1) 
        {
            printf("parametre insuffisant");
            return -1;
        }
        int buff;
        FILE * f = fopen(argv[1],"r+");
        fscanf(f,"%d\n",&buff);
        fseek(f,0,0);
        fprintf(f,"%d\n",buff+1);
        fclose(f);

    return 0;
}