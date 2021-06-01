#! /bin/bash
# saisie.sh

n=-1
while [ "$n" -lt 0 ] || [ "$n" -gt 10 ]
do
  echo "Saisissez une valeur entre 0 et 10"
  read n
done
echo "Premier appel"
./script.sh
export n
echo "Deuxieme appel"
./script.sh