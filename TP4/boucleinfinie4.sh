#! /bin/bash
# boucleinfinie4.sh


echo Je suis le processus $$
trap "echo $$ signale SIGINT recu ;exit 0" SIGINT
trap "echo $$ signale SIGQUIT recu ;exit 0" SIGQUIT
trap "echo $$ signale SIGTERM recu ;exit 0" SIGTERM
i=0
while [ true ]
do
echo $i
i=$(($i + 1))
sleep 1
done
