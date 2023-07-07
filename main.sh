#! /bin/bash

source lancer_apres_choix_niveau.sh
source collision.sh
source pomme.sh
source afficher_score.sh
source control.sh
source taille_H.sh
source taille_L.sh
source afficher_meilleur_score.sh
source affichage_snake.sh
source snake.sh

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
    lancer_apres_choix_niveau
    break
    ;;
  #Si choix = 2 --> sélectionner le meilleur score
  2)  #fonction qui stocke les scores
    afficherMeilleurScore
    break
    ;;
  #Si choix = 3 --> quitter la partie
  3) exit;;
  *) echo "Choix incorrect";;
  esac
done








