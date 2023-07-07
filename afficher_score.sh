#! /bin/bash

afficherscore() {
	i=0
	cat ~/.snake | while read ligne
        do
	 i=$((i+1))
	 echo "Score numero $i:  $ligne" 
	done
}

afficherscore 

