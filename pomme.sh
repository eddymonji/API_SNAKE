#!/bin/bash
# un autre moyen que j'ai trouvé sur internet pour inclure les fichiers 

pommex=0
pommey=0
generer_pomme() {
   map=$1
   HAUTEUR=$(taille_H $map)
   LARGEUR=$(taille_L $map)

    x=$(($RANDOM % $HAUTEUR))
    y=$(($RANDOM % $LARGEUR))

 # Vérifier si la position générée est libre
    echo "is_collision $map $x $y"
    iscollision=$(is_collision $map $x $y)

    if [ $iscollision -eq 1 ]
     then
        generer_pomme  $map

    else
    isnake=$(is_snake $map $x $y)

      if [ $isnake -eq 1 ]
        then
         generer_pomme  $map
      else
         pommex="$x"
         pommey="$y"
         tput cup $x $y
         echo "*"
      fi
    fi
}


