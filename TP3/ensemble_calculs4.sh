#! /bin/bash
# ensemble_calculs3.sh

if [ $# -eq 0 ]
then
  echo "Il faut des parametres"
  exit 1
fi

if [ -d $1 ]
then
    echo "Dossier $1 existant"
    exit 1
elif [ -d $2 ]
then    
    echo "Dossier $2 existant"
    exit 1
else
    > $1
    > $2
    s=""
    s1=""
    name=$1
    name1=$2
    shift 2
    for x in "$@" 
    do
        ./calcul3.sh $x $name $name1
    done

fi