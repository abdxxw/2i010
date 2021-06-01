#! /bin/bash
# pere.sh


if [ $# -ne 1 ]
then
  echo "Il faut un parametres"
  exit 1
fi

x=1
nb=$1
export x
export nb
while [ $x -le $1 ]
do
    ./fils.sh
    x=$(($x+1))
done