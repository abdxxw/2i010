#! /bin/bash
# saisie_val.sh

n=-1
while [ $n -lt 0 ]
do
  echo "Saisissez une valeur positive"
  read n
  exit $n
done
