#! /bin/bash

x=0
while [ $x -le $1 ]
do
    echo $x
    x=$(./add $x 1)
done