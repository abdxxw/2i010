#! /bin/bash
# pere_para.sh


if [ $# -ne 1 ]
then
  echo "Il faut un parametres"
  exit 1
fi

x=1
while [ $x -le $1 ]
do
    ./fils_para.sh $x $1
    x=$(($x+1))
done