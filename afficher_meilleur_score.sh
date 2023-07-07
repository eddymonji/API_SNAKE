#! /bin/bash

afficherMeilleurScore(){
	bestscore=0
	cat ~/.snake | while read ligne
	do
	  if [ $ligne -gt $bestscore ]
	  then
		bestscore=$ligne
          fi
        done
	echo "Le meilleur score de la partie est le score $bestscore"

}

