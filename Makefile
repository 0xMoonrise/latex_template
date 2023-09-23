MAIN = main
LATEX = pdflatex
LATEXFLAGS = -shell-escape
OUTPUT_DIR = build
PDF ?= document
SRC_DIR = src

all: $(SRC_DIR)/$(MAIN)

$(SRC_DIR)/$(MAIN): $(SRC_DIR)/$(MAIN).tex
	mkdir -p $(OUTPUT_DIR)
	$(LATEX) $(LATEXFLAGS) -output-directory=$(OUTPUT_DIR) --jobname=$(PDF) $(SRC_DIR)/$(MAIN).tex
	mv $(OUTPUT_DIR)/$(PDF).pdf .

clean:
	rm -rf $(OUTPUT_DIR)/*
	rm -r *.pdf
.PHONY: clean
