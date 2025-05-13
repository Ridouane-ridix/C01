#!/bin/bash

# Demande à l'utilisateur de saisir le nom du dossier
echo "Entrez le nom du dossier :"
read Myfolder

# Affiche le nom du dossier
echo "$Myfolder"

# Initialise le compteur
count=0

# Boucle sur les éléments listés dans le dossier
for item in $(ls "$Myfolder"); do
  # Vérifie si c’est un fichier (et pas un dossier)
  if [ -f "$Myfolder/$item" ]; then
    count=$((count + 1))
  fi
done

# Affiche le résultat
echo "Le dossier $Myfolder contient $count fichier(s)."
