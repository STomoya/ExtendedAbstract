#!/bin/bash

# folder to put zip files.
mkdir ./zip

# working dir
mkdir ./temp

# zip Japanese template files.
cp -r sample.tex sample.pdf iml.sty jecon_ips.bst achievement.bib bibliography.bib .latexmkrc fig ./temp
cd ./temp
zip -r ../zip/extendedabstract.zip .

# reset
cd ..
rm -r ./temp/*

# zip English template files.
cp sample_en.tex ./temp/sample.tex
cp sample_en.pdf ./temp/sample.pdf
cp -r iml.sty jecon_ips.bst achievement.bib bibliography.bib .latexmkrc fig ./temp
cd ./temp
zip -r ../zip/extendedabstract_en.zip .

# cleanup
cd ..
rm -r ./temp
