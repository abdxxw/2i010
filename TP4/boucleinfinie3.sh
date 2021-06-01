#! /bin/bash
# boucleinfinie3.sh


echo Je suis le processus $$
trap "echo $$ signale SIGINT recu exit 0" SIGINT
i=0
while [ true ]
do
echo $i
i=$(($i + 1))
sleep 1
done
