#!/bin/bash

# Utilise le dossier courant (.) comme cible
Myfolder="."
NomDuDossier=$(basename "$PWD")
count=$(ls -p "$Myfolder" | grep -v / | wc -l)
# Affiche le résultat
echo "Le dossier $NomDuDossier  contient $count fichier(s)."


