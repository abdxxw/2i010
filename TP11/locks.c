#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

void lock(char* name) {
  lockf(open(name,O_RDWR | O_CREAT, 0664),F_LOCK,0);
}

void unlock(char* name) {
  lockf(open(name,O_RDWR | O_CREAT, 0664),F_ULOCK,0);
}
