#! /bin/bash
# saisie.sh


trap - SIGINT
read x 
while [ $x -lt 1 ] || [ $x -gt 31 ]
do
read x
done

trap "echo $$ signale SIGINT recu" SIGINT
read y
while [ $y -lt 1 ] || [ $y -gt 12 ]
do
read y

done


trap - SIGINT
read z
while [ $z -lt 1960 ] || [ $z -gt 1980 ]
do
read z
done
