include .env

LATEX = pdflatex
OUT = build/$(NAME)

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
