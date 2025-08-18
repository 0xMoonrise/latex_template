MD          := $(FILENAME).md
PDF         := $(FILENAME).pdf
TEMPLATE    := src/main.tex
PDF_ENGINE  := xelatex
HIGHLIGHT   := pygments

PANDOC_FLAGS := --template=$(TEMPLATE) --pdf-engine=$(PDF_ENGINE) --highlight-style=$(HIGHLIGHT)

.PHONY: all pdf clean

all: pdf

pdf: $(PDF)

$(PDF): $(MD) $(TEMPLATE)
	pandoc $(MD) $(PANDOC_FLAGS) -o $(PDF)

%.pdf: %.md $(TEMPLATE)
	pandoc $< $(PANDOC_FLAGS) -o $@

clean:
	rm -f $(PDF)
