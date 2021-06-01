#! /bin/bash

if [ $# -ne 1 ] || [ ! -f $1 ]
then
    echo eRR
fi

while [ ! -f ec.sync ]
do
    sleep 1
done

for x in $(cat $1)
do
    echo mot lu : $x
    touch le.sync
done

rm -f ec.sync
