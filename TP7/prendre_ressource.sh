#! /bin/bash
# prendre_ressource.sh

x=$(cat $1)

while [ $x -lt 1 ]
do
    sleep 1
    x=$(cat $1)
done
x=$(($x-1))
echo $x > $1