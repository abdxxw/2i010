#! /bin/bash
# repertoire.sh

x=0
for rep in "$@" 
do
 	if ! [ -d "$rep" ]
	then
		x=$(($x+1))
	fi 
done
exit $x
