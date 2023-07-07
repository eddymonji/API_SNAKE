#!/usr/bin/env bash

source control.sh

function is_collision {
file=$1
x=$2
y=$3

 #Recuperation de la ligne dans le fichier entré en argumement
 ligne=$(sed -n "${x}p" "$file")
 #Recuperation du caractere à la colonne correspondante
 caractere="${ligne:$((y-1)):1}"

  if [[ "$caractere" == "#" ]]; then
      echo "1"
    else
      echo "0"
    fi
}

#Fonction qui dit se le position se trouve à une cordonnée 
function is_snake {

pos_x=$1
pos_y=$2

for i in $(seq 0 $((${#listsnakex[@]} -1 )))
do
 
  if [ ${listsnakex[$i]} -eq $pos_x ]
  then
   if  [ ${listsnakey[$i]} -eq $pos_y ]
    then
    #Le serpent se trouve a cette position
     echo "1"
     return
   fi
  
 fi
 
done

#Le serpent ne se trouve pas à cette position
echo "0"

}

#is_snake  7 2


function is_pomme {
pos_x=${listsnakex[0]}
pos_y=${listsnakey[0]}

  if [ $pommex -eq $pos_x &&  $pommey -eq $pos_y ]
  then
    #La pomme se trouve a cette position
     echo "0"
     return
   fi
#Le serpent ne se trouve pas à cette position
echo "1"

}

