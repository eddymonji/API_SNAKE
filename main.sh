#! /bin/bash

echo "######_Bienvenue dans le jeu snake_#####"

while [ 1 = 1 ]
do
  #On affiche le menu
  echo "1. Choisissez un niveau"
  echo "2. Choisissez le meilleur score"
  echo "3. Quitter le jeu"

  echo -n "Veuillez entrer le numero qui correspond a votre choix : \c "

  #Lecture de la valeur entrer par l'utilisateur
  read choix


  case "$choix" in
  # Si choix = 1 --> démarrer jeu
  1)  #fonction qui permet de générer le map
    echo "Le jeu snake va bientôt démarrer"
    break
    ;;
  #Si choix = 2 --> sélectionner le meilleur score
  2)  #fonction qui stocke les scores
    echo "Le meilleur score est celui d'Aziz égale à 150 pommes"
    break
    ;;
  #Si choix = 3 --> quitter la partie
  3) exit;;
  *) echo "Choix incorrect";;
  esac
done








