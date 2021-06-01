#! /bin/bash
# test_saisie.sh


./saisie_val.sh
n=$?

while [ $n -lt 10 ]
do
    echo "Valeur lu par saisie_val.sh est $n"
    ./saisie_val.sh
    n=$?
done
