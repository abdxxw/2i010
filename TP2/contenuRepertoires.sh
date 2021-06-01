#! /bin/bash

if [ $# -eq 0 ]
then
  echo $(pwd)
  exit 1
fi

for x in "$@"
    do
        if [ -d $x ]
        then
            echo $x repertoire
        elif [ -f $x ]
        then
            echo $x fichier
        else
            echo Erreur
        fi
    done
