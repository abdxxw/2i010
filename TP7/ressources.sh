#! /bin/bash
if [ $# -ne 1 ] ; then
    echo Il faut exactement un parametre
    exit 1
fi
if [ ! -f "$1" ] ;
then
    echo Le parametre doit etre un fichier
    exit 1
fi
read fic1 fic2 fic3 < "$1"


/Vrac/lockfile -1 r.lock
read nb1 < $fic1
/Vrac/lockfile -1 w.lock
read nb2 < $fic2
touch $fic3
echo $nb2 > $fic1
rm -f r.lock
echo $nb1 > $fic2
/Vrac/lockfile -1 "$fic3.lock"
rm -f w.lock

res=$(($nb1 + $nb2))


read val < $fic3
if [ -z "$val" ] ;
then
    echo $res > $fic3
else
    echo $(($nb1 * $val)) > $fic3
fi
rm -f "$fic3.lock"