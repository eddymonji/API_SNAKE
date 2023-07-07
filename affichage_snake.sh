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

