#! /bin/bash
# fils.sh


if [ $# -ne 1 ]
then
	echo un parametre est obligatoire
fi


x=$(./alea.sh)

echo Je suis le processus $1 et je crée $x petits fils
i=1
while [ $i -le $x ]
do 
	./petit_fils.sh $i.$1
	i=$(($i+1))
done

exit $x
