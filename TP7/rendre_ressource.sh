#! /bin/bash
# rendre_ressource.sh

x=$(cat $1)
x=$(($x+1))
echo $x > $1