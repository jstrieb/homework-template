SHELL := /bin/bash

LATEX-DIR := $$HOME/texmf/tex/latex/local

.PHONY: install
install: homework.cls
	cp homework.cls $(LATEX-DIR)
	@echo Homework template installed in $(LATEX-DIR)/homework.cls
