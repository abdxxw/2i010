#! /bin/bash

if [ $# -ne 1 ]
then
  echo  erreur
  exit 1
fi
if [ ! -f $1 ]
then
    echo ce n\'est pas un fichier 
    exit 1
fi
t=0
s=0
for x in $(cat $1)
    do
       
        if [ $s -eq 1 ]
        then
            if [ $t -eq 1 ]
            then
                t=0
                if [ -d $x ] || [ -f $x ]
                then
                    echo $x dossier existe deja
                else
                mkdir $x
                    echo Le repertoire $x vient d\'etre creer
                fi
            elif [ $t -eq 2 ]
            then
                t=0
                if [ -f $x ] || [ -d $x ]
                then
                    echo $x fichier existe deja
                else
                touch $x
                    echo Le fichier $x vient d\'etre creer
                fi

                
            fi
            s=0
        elif [ $s -eq 0 ]
        then
            if [ $x = "d" ]
            then
                t=1
            elif [ $x = "f" ]
            then    
                t=2
            else
                echo Erreur Format
            fi
            s=1
        fi
        
       
    done
