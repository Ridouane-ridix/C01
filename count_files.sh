#!/bin/bash

# Vérifie si un nom de dossier a été fourni
if [ -z "$1" ]; then
  echo "Usage : $0 nom_du_dossier"
  exit 1
fi

# Récupère le nom du dossier
folder="$1"

# Vérifie que c'est bien un dossier existant
if [ ! -d "$folder" ]; then
  echo "Le dossier '$folder' n'existe pas."
  exit 1
fi

# Compte le nombre de fichiers (uniquement fichiers, pas dossiers)
file_count=$(ls -p "$folder" | grep -v / | wc -l)

# Affiche le résultat
echo "Le dossier $folder contient $file_count fichier(s)."
