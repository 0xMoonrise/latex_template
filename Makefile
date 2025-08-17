MD          := report.md
PDF         := out.pdf
TEMPLATE    := src/main.tex
PDF_ENGINE  := xelatex
HIGHLIGHT   := pygments

PANDOC_FLAGS := --template=$(TEMPLATE) --pdf-engine=$(PDF_ENGINE) --highlight-style=$(HIGHLIGHT)

.PHONY: all pdf clean

all: pdf

pdf: $(PDF)

$(PDF): $(MD) $(TEMPLATE) Makefile
	pandoc $(MD) $(PANDOC_FLAGS) -o $(PDF)

%.pdf: %.md $(TEMPLATE) Makefile
	pandoc $< $(PANDOC_FLAGS) -o $@

clean:
	rm -f $(PDF)
