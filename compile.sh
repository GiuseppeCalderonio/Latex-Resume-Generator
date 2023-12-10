#!/bin/bash

cvs=find . -name 'CV-*.tex'

for FILE in CV-*.tex; do
    # Compile the LaTeX file to produce a PDF
    pdflatex "$FILE"
    
    # Get the filename without the extension
    filename=$(basename -- "$FILE")
    filename_no_ext="${filename%.tex}"
    
    # Move the produced PDF file to the parent directory
    mv "${filename_no_ext}.pdf" ../
done

rm -f *.log *.aux *.out

