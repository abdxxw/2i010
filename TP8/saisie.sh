#! /bin/bash

if [ $# -ne 1 ] || [ -d $1 ]
then
    exit 1
fi
if [ -f $1 ]
then
    rm -f $1
fi
read x
lockfile "$1.lock"
while [ $x -ge 0 ]
do
    echo $x >> $1
    read x
done

echo $x >> $1
touch sais.sync

rm -f "$1.lock"