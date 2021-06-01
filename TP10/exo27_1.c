

int main(int argc, char *argv[]) {

    if(!fork()){
        if(!fork()){
            if(!fork()){
                sleep(10);
            }
                sleep(10);
        }
                sleep(10);
    }
    return 0;
}