.PHONY: pdf

pdf:
	# Removing previous verion
	mv dis/document.pdf dis/document.pdf.bak | true
	sudo pdflatex -output-format=pdf -output-directory=dist document.tex