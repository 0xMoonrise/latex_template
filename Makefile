include .env

LATEX = pdflatex
OUT = build/$(NAME)
PNAME := $(subst ",,$(NAME))

NAMES := $(subst \\,\\\\, $(NAMES))

all:
	mkdir -p $(OUT)
	$(LATEX) \
		-output-directory=$(OUT) \
		-jobname=$(NAME) \
		"\def\utitle{$(TITLE)} \
		 \def\usubject{$(SUBJECT)} \
		 \def\usemester{$(SEMESTER)} \
		 \def\uprofessor{$(PROFESSOR)} \
		 \def\unin{$(UNIVERSITY)} \
		 \def\ucareer{$(CAREER)} \
		 \def\udepartment{$(DEPARTMENT)} \
		 \def\uwhere{$(WHERE)} \
		 \def\uname{\parbox{\linewidth}{\centering $(NAMES)}} \
		 \input{src/main.tex}"

backup:
	mkdir -p $(BACKUP)/
	zip -r $(BACKUP)/$(PNAME)-$(shell date '+%Y-%m-%d').zip src/* build/$(PNAME)

restore:
	git restore src/body.tex src/main.tex
