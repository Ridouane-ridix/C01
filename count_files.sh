#!/bin/bash

Myfolder="."
NomDuDossier=$(basename "$PWD")
echo "$NomDuDossier"
count=0
for item in $(ls "$Myfolder"); do
  if [ -f "$item" ]; then
    count=$((count + 1))
  fi
done
echo "Le dossier $NomDuDossier contient $count fichier(s)."
