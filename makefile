
%.png : %.tex
	pdflatex $<
	rm $*.aux $*.log
	pdftoppm -f 1 -singlefile -rx 1000 -ry 1000 -png $*.pdf $*
	rm $*.pdf
