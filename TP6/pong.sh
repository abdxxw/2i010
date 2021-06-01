#! /bin/bash
# pong.sh

trap " echo $$ : PONG ; kill -10 "$1" " SIGUSR1

kill -10 "$1"
x=0
while [ $x -eq 0 ]
do
    x=0
done
