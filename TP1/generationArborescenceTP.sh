#!/bin/bash
annee="$(date +%Y)"
Rep="$(dirname $0)"
mkdir -p $HOME/2I010-${annee}fev/TP{1,2,3,4,5,6,9,11} $HOME/2I010-${annee}fev/tp10
mkdir $HOME/2I010-${annee}fev/TP3/TP4
touch $HOME/2I010-${annee}fev/TP3/TP5

mkdir -p $HOME/2I010-${annee}fev/TP1/MetaCaracteres
touch $HOME/2I010-${annee}fev/TP1/MetaCaracteres/{{a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}{1,5,3,7,b,c,d,f,g,h,j,k,l,m,n},@,Il,etait,une,fois,{ab,cd,ea,ze,co,va,rien,qqc}{a,e,i,o,u,y},{ab,ce,hg}.txt} 
touch $HOME/2I010-${annee}fev/TP8

cp ${Rep}/Gilgamesh $HOME/2I010-${annee}fev/TP1/MetaCaracteres/
cp ${Rep}/Epopee $HOME/2I010-${annee}fev/TP1/MetaCaracteres/
cp ${Rep}/de $HOME/2I010-${annee}fev/TP1/MetaCaracteres/
cp ${Rep}/questionTP1 $HOME/2I010-${annee}fev/TP1/MetaCaracteres/
