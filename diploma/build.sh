#!/bin/bash
xelatex -interaction=nonstopmode -shell-escape main
bibtex main
xelatex -interaction=nonstopmode -shell-escape main
xelatex -interaction=nonstopmode -shell-escape main

rm *.bbl *.out *.log *.toc *.aux *.blg
rm -rf _minted-main
