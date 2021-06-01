#! /bin/bash

i=0
if [ $# -eq 0 ]
then
  for s in $(ls)
  do
    i=$(($i+1))
  done 
  echo $(pwd) et contient $i elements 
  exit 1
fi

for x in "$@"
    do
        if [ -d $x ]
        then
            i=0
            for s in $(ls $x)
            do
                i=$(($i+1))
            done
            echo $x repertoire, contient $i elements
        elif [ -f $x ]
        then
            echo $x fichier
        else
            echo Erreur
        fi
    done
