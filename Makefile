
LATEX = pdflatex
BIBTEX = bibtex

SRC =	abstract.tex		\
	background.tex		\
	conclusion.tex		\
	pqueue-implementation.tex	\
	results.tex

BIB = bibliography.bib

paper.pdf: paper.tex $(SRC) $(BIB)
	$(LATEX) $<
	$(BIBTEX) paper
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f *.aux *.log *.out *.pdf *.bbl *.blg
