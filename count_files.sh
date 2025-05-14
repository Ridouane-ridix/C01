#!/bin/bash
# Demande à l'utilisateur de saisir le nom du dossier
read Myfolder
# Affiche le nom du dossier
echo "$Myfolder"
#comptage des fichiers
count=$(ls -1 "$Myfolder" | wc -l)
# Affiche le résultat
echo "Le dossier $Myfolder contient $count fichier(s)."
