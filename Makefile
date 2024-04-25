compile:
	latexmk -pdf -bibtex -outdir=output -use-make\
			-pdflatex='pdflatex -shell-escape -synctex=-1 -src-specials -interaction=nonstopmode'

output/tikz/%.pdf:
	latexmk tikz/$*.tex -pdf -outdir=output/tikz/

clean:
	rm -rf output/

run: compile
	latexmk -pdf -outdir=output -pv
