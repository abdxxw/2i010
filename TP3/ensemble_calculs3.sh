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
    s=""
    s1=""
    name=$1
    name1=$2
    shift 2
    for x in "$@" 
    do
        if [ $(./calcul.sh $x) -le 0 ]
        then
            s=$s$(./calcul.sh $x)'\n'
        else
            s1=$s1$(./calcul.sh $x)'\n'
        fi
    done

    echo -e $s > $name
    echo -e $s1 > $name1
fi