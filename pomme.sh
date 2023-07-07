#!/bin/bash
# un autre moyen que j'ai trouvé sur internet pour inclure les fichiers 
source taille_H.sh
source taille_L.sh
source collision.sh

generer_pomme() {
   map=$1
   HAUTEUR=$(taille_H $map)
   LARGEUR=$(taille_L $map)

    x=$(($RANDOM % $HAUTEUR))
    y=$(($RANDOM % $LARGEUR))

#  TEST
    echo $x
    echo $y

 # Vérifier si la position générée est libre 
    echo "is_collision $map $x $y"
    iscollision=$(is_collision $map $x $y)
        
    if [ $iscollision -eq 1 ]
     then
        pomme=("$x" "$y")
   else
        generer_pomme  $map
    fi
}
generer_pomme "$1"

