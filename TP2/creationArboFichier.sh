#! /bin/bash

if [ $# -ne 1 ]
then
  echo  erreur
  exit 1
fi
if [ ! -f $1 ]
then
    echo ce n\'est pas un fichier 
    exit 1
fi
for x in $(cat $1)
    do
        if [ -d $x ] || [ -f $x ]
        then
            echo $x element existe deja
        else
            mkdir $x
            echo Le repertoire $x vient d\'etre creer
        fi
    done
