include .env

LATEX = pdflatex

all:
	mkdir -p build/$(NAME)
	$(LATEX) -output-directory=build/$(NAME) -jobname=$(NAME) src/main.tex
