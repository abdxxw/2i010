#! /bin/bash
# lancement_ecriture.sh
if [ -f f1 ]
then
rm f1
fi
if [ -f f2 ]
then
rm f2
fi
if [ -f f3 ]
then
rm f3
fi
./ecriture.sh f1 f2 f3 & ./ecriture.sh f1 f2 f3
