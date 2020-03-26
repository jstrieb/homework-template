SHELL := /bin/bash

LATEX-DIR := $$HOME/texmf/tex/latex/local

.PHONY: install
install: homework-template.cls
	cp homework-template.cls $(LATEX-DIR)
	@echo Homework template installed in $(LATEX-DIR)
