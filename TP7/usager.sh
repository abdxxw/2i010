#! /bin/bash
# rendre_ressource.sh

echo "Arrivee de l’usager $$"
source ./prendre_ressource.sh /tmp/VG/nbc 
source ./prendre_ressource.sh /tmp/VG/nbp
source ./rendre_ressource.sh /tmp/VG/nbc 
echo "Usager $$ se baigne"
sleep 3
source ./prendre_ressource.sh /tmp/VG/nbc 
source ./rendre_ressource.sh /tmp/VG/nbp 
source ./rendre_ressource.sh /tmp/VG/nbc 
echo "Fin de $$"