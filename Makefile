.PHONY: all pdf html preview plots

all: pdf html

pdf:
	quarto render index.qmd --to pdf 

html:
	quarto render index.qmd --to html 

presentation:
	quarto render presentation.qmd

preview:
	quarto preview index.qmd

plots:
	./scripts/sync-plots.sh

# generate versions of the pdf for submission
# sudo apt install pdftk-java 
report:
	cp index.pdf buhr_jannik_komplett.pdf
	pdftk index.pdf cat 8-r12 output buhr_jannik_plagiatspruefung.pdf
