.PHONY: pdf

pdf:
	pdflatex -output-format=pdf -output-directory=dist document.tex