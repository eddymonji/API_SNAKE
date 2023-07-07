#!/bin/bash
# un autre moyen que j'ai trouvé sur internet pour inclure les fichiers 


generer_pomme() {
   map=$1
   HAUTEUR=$(taille_H $map)
   LARGEUR=$(taille_L $map)

    x=$(($RANDOM % $HAUTEUR))
    y=$(($RANDOM % $LARGEUR))

 # Vérifier si la position générée est libre
    echo "is_collision $map $x $y"
    iscollision=$(is_collision $map $x $y)

    if [ $is_collision -eq 1 ]
     then
        generer_pomme  $map

    else

      if [ $is_snake -eq 1 ]
        then
         generer_pomme  $map
      else
         pomme=("$x" "$y")
      fi
    fi
}
generer_pomme "$1"

