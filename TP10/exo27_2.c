

int main(int argc, char *argv[]) {

    int j,i;
    for(i=0;i<3;i++){
        if(!fork()){
            for(j=0;j<3;j++){
                if(!fork()){
                        sleep(10);
                        break;
                }
            }
                sleep(10);
                break;
        }
    }
    return 0;
}