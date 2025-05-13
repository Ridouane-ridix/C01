#!/bin/bash
# Utilise le dossier courant (.) comme cible
Myfolder="."  
# Liste les éléments du dossier avec ls -p :
# -p ajoute un / à la fin des noms de répertoires
# grep -v / permet d'exclure les répertoires
# wc -l compte le nombre de fichiers
count=$(ls -p "$Myfolder" | grep -v / | wc -l)
# Affiche le résultat
echo "Le dossier myfolder contient $count fichier(s)."

