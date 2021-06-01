#! /bin/bash

if [ $# -ne 1 ] || [ ! -f $1 ]
then
    exit 1
fi

while [ ! -f som.sync ]
do
    sleep 1
done
file=$1
lockfile "$file.lock"
set $(cat $1)
moy=$(($2/$1))
if [ $moy -ge 10 ]
then
    echo recu : $moy
else
    echo recale : $moy
fi
rm -f som.sync
rm -f "$file.lock"


