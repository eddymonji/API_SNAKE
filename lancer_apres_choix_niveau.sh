#! /bin/bash


niveau_1() {

    deplacement_snake map.txt
}

# Fonction du niveau 2
niveau_2() {
    deplacement_snake map2.txt
}

# Fonction du niveau 3
niveau_3() {
    deplacement_snake map3.txt
}

lancer_apres_choix_niveau() {

echo "Choisissez le niveau :"
echo "1. Niveau 1"
echo "2. Niveau 2"
echo "3. Niveau 3"
read niveau_choix

case "$niveau_choix" in
    1)
      niveau_1

        ;;
    2)
      niveau_2
        ;;
    3)
      niveau_3
        ;;
    *) echo "Choix incorrect";;
esac

}
