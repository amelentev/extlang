all: tex bib

tex: extlang.tex
	pdflatex extlang.tex

bib: tex
	bibtex extlang
	pdflatex extlang.tex

spell:
	aspell -d ru -c extlang.tex

clean:
	rm *.aux *.bbl *.blg *.log *.pdf *.toc tmp -R

