#!/bin/bash
# Utilise le dossier courant
Myfolder="."
# Récupère le nom du dossier courant (nom simple, pas le chemin)
NomDuDossier=$(basename "$PWD")
# Affiche juste le nom du dossier
echo "$NomDuDossier"
# Compte les fichiers (en excluant les répertoires)
count=$(ls -p "$Myfolder" | grep -v / | wc -l)
# Affiche le nombre de fichiers
echo "Le dossier $NomDuDossier contient $count fichier(s)."
