
output/%.png : examples/%.lcg
	mkdir -p output temp
	(echo '\documentclass{logic-game}\\begin{document}\\begin{tikzpicture}'; cat $<; echo '\\end{tikzpicture}\\end{document}') > temp/$*.tex
	pdflatex -output-directory output temp/$*.tex
	rm output/$*.aux output/$*.log
	pdftoppm -f 1 -singlefile -rx 1000 -ry 1000 -png output/$*.pdf output/$*
	rm -r temp output/$*.pdf
