CV=cv
LATEX=xelatex

BIBTEX=bibtex

SRCS=$(wildcard *.tex) $(wildcard *.sty)  $(wildcard *.bst)  $(wildcard *.pl)

all: prelim $(CV).pdf

prelim:
	rm -rf $(CV).pdf

$(CV).pdf: $(SRCS)
	$(LATEX) $(CV)
	$(LATEX) $(CV)


clean:
	rm -f *.dvi *.aux *.log *.blg *.bbl *.out *.fdb_latexmk $(CV).ps $(CV).pdf

