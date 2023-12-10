#!/bin/bash

cvs=find . -name 'CV-*.tex'

for FILE in CV-*.tex; do
    pdflatex ${FILE}
    mv -- "$FILE" "${FILE%.tex}.pdf" 
    mv ${FILE} ../ 
done

