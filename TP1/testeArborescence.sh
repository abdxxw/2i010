#!/bin/bash
#set -x
# Teste l'arborescence 
# --------------------

annee=$(date +%Y)

function checkdirs {

 # Teste l'existence
 for i in "$@"; do
 dir="$HOME/$i"
 if [ ! -d "$dir" ]; then
  	test -f "$dir" && echo "$i est un fichier, pas un repertoire" \
  	|| echo "Le repertoire $i n'existe pas"
fi
 done
}

# Teste le contenu d'un répertoire
function checkonly {
 dir="$1"
 if test -d "$HOME/$dir"; then
    dir2="$2"
    shift
    shift
    if test -d "$HOME/$dir/$dir2"; then
        for i in "$HOME/$dir/$dir2"/*; do
            file=$(basename "$i")
            # évite le problème d'un "faux" fichier
            test -e "$i" || continue
            for j in "$@"; do
                if test "$file" = "$j"; then continue 2; fi
            done
            if test -d "$i"; then 
                echo "$file est un repertoire qui ne devrait pas se trouver dans $dir/$dir2"
            elif test -f "$i"; then 
                echo "$file est un fichier qui ne devrait pas se trouver dans $dir/$dir2"
            else 
                echo "$file est un objet inconnu dans $dir/$dir2."
            fi
        done
    fi
fi
}

cd
echo
echo "ATTENTION : les deux listes suivantes doivent etre vides."
echo "Si ce n'est pas le cas, modifiez votre arborescence et re-testez la."
echo
echo Tapez sur \"return\"  pour afficher les listes
echo "--------------------------------------------------------"
read touche
echo
echo "LISTE des repertoires qui devraient exister (et qui n'existent pas)"
echo "=================================================================="
echo

checkdirs 2I010-"$annee"fev  2I010-"$annee"fev/TP{1,2,3,4,5,6,7,8,9,10,11}

echo
echo "LISTE des repertoires/fichiers qui ne devraient pas exister (et qui existent)"
echo "=================================================================="
echo

checkonly . 2I010-"$annee"fev TP{1,2,3,4,5,6,7,8,9,10,11} 
echo


