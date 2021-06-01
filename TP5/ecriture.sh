#! /bin/bash
# ecriture.sh

if [ $# -lt 1 ]
then
  echo "Il faut au moins un parametre"
  exit 1
fi


echo $$ >> fic_PID

for x in $(cat fic_PID)
	do
	if [ ! $$ == $x ]
	then
	kill -s SIGSTOP $x
	fi
	done



for elem in "$@"
do
  if [ ! -e "$elem" ]
  then
    echo premier $$  > "$elem"
    
  else
    echo suivant $$ >> "$elem"
  fi
	
done

 
for x in $(cat fic_PID)
	do
	kill -s SIGCONT $x
	done
