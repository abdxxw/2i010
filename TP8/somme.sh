#! /bin/bash

if [ $# -ne 1 ] || [ ! -f $1 ]
then
    exit 1
fi
while [ ! -f sais.sync ]
do
    sleep 1
done
lockfile "$1.lock"
nb=$(cat $1 | head -n-1 |wc -l)
s=0
for x in $(cat $1 | head -n-1)
do
    s=$(($s+$x))
done
echo $nb $s > $1
rm -f sais.sync
touch som.sync
rm -f "$1.lock"
