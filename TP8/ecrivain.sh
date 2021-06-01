#! /bin/bash

if [ $# -lt 2 ] || [ -d $1 ]
then
    exit 1
fi

if [ -f $1 ]
then
    rm -f $1
fi

file=$1
shift
for x in "$@"
do
    echo $x > $file
    touch ec.sync
    echo "$(./lecteur.sh $file &)   ecrivain"
    while [ ! -f le.sync ]
    do
        sleep 1
    done
    rm -f le.sync
done

touch ec.sync
echo FIN
