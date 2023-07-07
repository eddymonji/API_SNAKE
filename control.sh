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
  touche=$3
  declare -a nlistsnakex
  declare -a nlistsnakey
  if [ "$touche" = "z" ]
  then
    co=${$2[0]}
    nlistsnakey[0]=$(($co-1))
  elif [ "$3" = "q" ]
  then
    nlistsnakex[0]=$(($1[0]-1))
  elif [ "$3" = "s" ]
  then
    nlistsnakey[0]=$(($2[0]+1))
  elif  [ "$3" = "d" ]
  then
    nlistsnakex[0]=$(($1[0]+1))
  fi
  for i in {1..$((${#$1[@]}-1))}
  do
    nlistsnakex[$i]=$1[$(($i-1))]
  done
  for i in {1..$((${#$2[@]}-1))}
  do
    nlistsnakey[$i]=$2[$(($i-1))]
  done
  $listsnakex=$nlistsnakex
  $listsnakey=$nlistsnakey
  echo "${listsnakex[@]}"
  echo "${listsnakey[@]}"
}

while [ 1 ]
do
  touche=$(lecture)
  echo $touche
  echo "${listsnakex[@]}"
  echo "${listsnakey[@]}"
  deplacement $listsnakex $listsnakey $touche
done
