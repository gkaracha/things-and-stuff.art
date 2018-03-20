
.SUFFIXES: .tex .pdf
.PHONY: all clean distclean FORCE

export SHELL := /bin/bash

default: cv.pdf
all: default

%.pdf: %.tex FORCE
	latexmk -pdf $<

cv.pdf: cv.tex

clean:
	$(RM) *.aux *.log *.bbl *.blg *.toc *.out *.fls *.haux *.fdb_latexmk *~

distclean: clean
	$(RM) cv.pdf

