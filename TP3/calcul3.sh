#! /bin/bash
# calcul3.sh

if [ $# -ne 5 ]
then
  echo "Il faut trois parametres"
  exit 1
fi

if [ "$2" != "+" ] && [ "$2" != "-" ]
then
  echo "l'operateur doit etre + ou -"
  exit 2
fi

if [ $(expr $1 $2 $3) -le 0 ]
then
    expr $1 $2 $3 >> $4
else
    expr $1 $2 $3 >> $5
fi
