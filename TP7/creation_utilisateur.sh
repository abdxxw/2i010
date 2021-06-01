#! /bin/bash
# script creation_utilisateur.sh
# Creation d'un nouvel utilisateur avec mise a jour des trois fichiers 
# concernes.
# Si la creation du nouvel utilisateur n'est pas possible un message
# d'erreur est affiche.
# Necessite trois parametres qui correspondent respectivement au login, 
# au mot de passe et au nom du nouvel utilisateur.

if [ "$#" -ne 3 ]; then
  echo "Vous devez saisir trois parametres"
  exit 1
fi
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Vous devez saisir un login, un mot de passe et un nom non vide"
  exit 1
fi

#/Vrac/lockfile -1 kherya.lock
#if [ -f login.txt ] && [ ! -z "$(grep "^$1$" login.txt)" ]
#then
#  echo "Choisissez un login different de $1"
#  rm -f kherya.lock
#  exit 1
#fi
#echo "$1" >> login.txt
#rm -f kherya.lock
#
#/Vrac/lockfile -1 kherya2.lock
#echo "$2" >> pass.txt
#rm -f kherya2.lock
#
#/Vrac/lockfile -1 kherya3.lock
#echo "$3" >> nom.txt
#rm -f kherya3.lock

/Vrac/lockfile -1 kherya.lock
if [ -f login.txt ] && [ ! -z "$(grep "^$1$" login.txt)" ]
then
  echo "Choisissez un login different de $1"
  rm -f kherya.lock
  exit 1
fi
echo "$1" >> login.txt
echo "$2" >> pass.txt
echo "$3" >> nom.txt
rm -f kherya.lock

