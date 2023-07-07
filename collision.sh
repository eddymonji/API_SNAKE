#!/usr/bin/env bash

function is_collision {
file=$1 
x=$2
y=$3
nb=0

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

is_collision $1 $2 $3
