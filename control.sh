#!/usr/bin/env bash

function lecture {
  read -rsn1 var
  while [ "$var" != "z" ]&&[ "$var" != "q" ]&&[ "$var" != "s" ]&&[ "$var" != "d" ]
  do
    read -rsn1 var
  done
  echo $var
}

declare -a listsnakex=(7 8 9)
declare -a listsnakey=(20 20 20)

function deplacement {
  touche=$1

  if [ "$touche" = "z" ]
  then
    co=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($(($co-1)) ${listsnakey[@]})

    oc=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($oc ${listsnakex[@]})

  elif [ "$touche" = "q" ]
  then
    co=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($(($co-1)) ${listsnakex[@]})

    oc=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($(($oc)) ${listsnakey[@]})

  elif [ "$touche" = "s" ]
  then
    co=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($(($co+1)) ${listsnakey[@]})

    oc=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($(($oc)) ${listsnakex[@]})

  elif  [ "$touche" = "d" ]
  then
    co=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($(($co+1)) ${listsnakex[@]})

    oc=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($(($oc)) ${listsnakey[@]})
  fi
  echo "${listsnakex[@]}" "${listsnakey[@]}"
}

while [ 1 ]
do
  touche=$(lecture)
  echo $touche
  deplacement $touche
done
