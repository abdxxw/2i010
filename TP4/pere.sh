#! /bin/bash
# pere.sh


if [ $# -ne 1 ]
then
	echo un parametre est obligatoire
fi
nb=0
i=1
while [ $i -le $1 ]
do 
	./fils.sh $i
	nb=$(($?+$nb))
	i=$(($i+1))
done

echo $(($nb+$1)) processus cree
