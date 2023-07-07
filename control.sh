#!/usr/bin/env bash

last_touche="z"
touche=""

function lecture {
  read -rsn1 -t 1 var
  if [ "$var" != "z" ]&&[ "$var" != "q" ]&&[ "$var" != "s" ]&&[ "$var" != "d" ]
  then
    var=$last_touche
  else
    last_touche=$var
  fi
  touche=$var
}

declare -a listsnakex=(7 8 9)
declare -a listsnakey=(20 20 20)

function deplacement {

  if [ "$touche" = "z" ]
  then
    co=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($(($co-1)) ${listsnakex[@]})

    oc=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($oc ${listsnakey[@]})

  elif [ "$touche" = "q" ]
  then
    co=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($(($co-1)) ${listsnakey[@]})

    oc=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($(($oc)) ${listsnakex[@]})

  elif [ "$touche" = "s" ]
  then
    co=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($(($co+1)) ${listsnakex[@]})

    oc=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($(($oc)) ${listsnakey[@]})

  elif  [ "$touche" = "d" ]
  then
    co=${listsnakey[0]}
    unset listsnakey[-1]
    listsnakey=($(($co+1)) ${listsnakey[@]})

    oc=${listsnakex[0]}
    unset listsnakex[-1]
    listsnakex=($(($oc)) ${listsnakex[@]})

  fi
  echo "${listsnakex[@]}" "${listsnakey[@]}"
}

