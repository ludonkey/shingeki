#!/bin/bash

# 1 - Creer un repertoire tmpDL et rentrer dedans
mkdir tmpDL
cd tmpDL

# 2 - Télécharger UNE image avec wget en utilisant les paramètres $1 et $2
chapter=`printf %04d $1`
page=`printf %03d $2`
wget https://www.lelscan-vf.com/uploads/manga/shingeki-no-kyojin/chapters/$chapter/$page.jpg

# 3 - Sortir du répertoire et convertir toutes les images en fichiers pdf
cd ..
convert tmpDL/*.jpg shingeki_$chapter.pdf

# 4 - Supprimer le répertoire tmpDL
rm -rf tmpDL
