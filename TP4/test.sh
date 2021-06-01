#! /bin/bash
# test.sh

./repertoire.sh "$@"
nb=$?

if [ $nb -eq 0 ]
then 
	echo "Tout les paramètres sont des rep"
elif [ $nb -eq 1 ]
then
	echo "un paramètre n'est pas un rep"
else 
	echo "$nb ne sont pas des rep "
fi
