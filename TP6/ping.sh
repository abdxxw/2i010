#! /bin/bash
# ping.sh


./pong.sh "$$" &
PONGPID=$!

trap "echo $$ : PING ; kill -10 $PONGPID " SIGUSR1

x=0
while [ $x -eq 0 ]
do
    x=0
done
