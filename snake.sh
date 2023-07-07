#! /usr/bin/env bash

function affichage_map {
  clear
  cat $1
}

function deplacement_snake {
  while [ $(is_collision $1 ${listsnakex[0]} ${listsnakey[0]}) = 0 ]
  do
    lecture
    echo $touche
    deplacement
    affichage_map $1
    affichage_snake
    tput cup $pommex $pommey
    echo "*"
  done
}

