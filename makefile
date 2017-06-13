
output/%.png : examples/%.tex
	mkdir -p output temp
	cp $< temp/$*.tex
	pdflatex -output-directory output temp/$*.tex
	rm output/$*.aux output/$*.log
	pdftoppm -f 1 -singlefile -rx 1000 -ry 1000 -png output/$*.pdf output/$*
	rm -r temp output/$*.pdf
