#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
        if (argc <= 2) 
        {
            printf("parametre insuffisant");
            return -1;
        }
        FILE * f = fopen(argv[1],"w");
        fprintf(f,"%s\n",argv[2]);
        fclose(f);

    return 0;
}