.PHONY: pdf

COMMAND = sudo pdflatex -output-format=pdf -output-directory=dist document.tex
pdf:
	# Removing previous verion
	mv -f dist/document.pdf dist/document.pdf.bak | true
	$(COMMAND) 
	cd dist && bibtex document.aux
	$(COMMAND)
	$(COMMAND)

show:
	open dist/document.pdf

dist: pdf show
	# That's it