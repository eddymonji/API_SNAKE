#!/bin/bash

affichage_snake() {

for i in $(seq 0 $((${#listsnakex[@]} -1 )))
  do
    x=${listsnakex[i]}
    y=${listsnakey[i]}
    tput cup $x $y
    echo "@" 
done


}

listsnakex=(5 6 7 8)
listsnakey=(8 8 8 8)

clear
affichage_snake
