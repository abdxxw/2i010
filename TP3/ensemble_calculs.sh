#! /bin/bash
# ensemble_calculs.sh

if [ $# -eq 0 ]
then
  echo "Il faut des parametres"
  exit 1
fi

for x in "$@" 
do
    ./calcul.sh $x 
done
