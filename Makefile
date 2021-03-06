.PHONY: pdf

COMMAND = sudo lualatex -output-format=pdf -output-directory=dist document.tex

pdf:
	# Removing previous verion
	mv -f dist/document.pdf dist/document.pdf.bak | true
	$(COMMAND) 
	cd dist && bibtex document.aux
	$(COMMAND)
	$(COMMAND)

show:
	open dist/document.pdf

dist: clear pdf show
	# That's it

clear:
	# Remove all temp/auxiliary files
	cd dist && rm -f *.log *.aux *.bbl *.blg