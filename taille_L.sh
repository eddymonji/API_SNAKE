#!/bin/bash

taille_L() {
    map=$1
    width=$(head -n 1 <"$map" | wc -m)
    echo $width
}

