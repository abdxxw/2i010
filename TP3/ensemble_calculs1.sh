#! /bin/bash
# ensemble_calculs.sh

if [ $# -eq 0 ]
then
  echo "Il faut des parametres"
  exit 1
fi

if [ -d $1 ]
then
    echo "Dossier existant"
    exit 1
else
    s=""
    name=$1
    shift 1
    for x in "$@" 
    do
        s=$s$(./calcul.sh $x)'\n'
    done

    echo -e $s > $name
fi