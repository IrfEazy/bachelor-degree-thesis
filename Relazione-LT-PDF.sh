#!/usr/bin/env fish
set RLT (pwd)
cd "$RLT"/src/images/
zip figures.zip *.png
cd "$RLT"
mv "$RLT"/src/images/figures.zip "$RLT"/src/
mkdir figures/
fuse-zip -r "$RLT"/src/figures.zip "$RLT"/src/figures/
cd "$RLT"/src/
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf --shell-escape thesis.tex
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf --shell-escape thesis.tex
cd "$RLT"
fusermount -u "$RLT"/src/figures/
cd "$RLT"
mkdir out
mv "$RLT"/src/thesis.log "$RLT"/src/thesis.pdf "$RLT"/src/thesis.synctex.gz "$RLT"/out/
rm "$RLT"/src/thesis.aux "$RLT"/src/thesis.lof "$RLT"/src/thesis.lot "$RLT"/src/thesis.out "$RLT"/src/thesis.toc
