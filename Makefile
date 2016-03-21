PC=pandoc

MDDIR=markdown
MD=$(addprefix $(MDDIR)/,title.md summary.md paper_list.md toc.md chapter1.md \
	chapter2.md chapter3.md references.md)
PREAMBLE=includes/preamble.tex
PAPER_PREAMBLE=includes/paper_preamble.tex
MENDELEY=~/Dropbox/mendeley/Thesis.bib
REFDIR=references

PFLAGS=--latex-engine=pdflatex \
	--filter pandoc-crossref \
	--template templates/template.tex \
	--chapters --number-sections -H $(PREAMBLE) \
	-V documentclass=book \
	-V fontsize=12pt \
	--bibliography=$(REFDIR)/$(OUTPUT).bib \
	--include-after-body $(MDDIR)/paper1.md \
	--include-after-body $(MDDIR)/paper2.md

PAPERMD=$(addprefix $(MDDIR)/, paper1.md paper2.md)

OUTPUT=thesis
BIB=$(REFDIR)/$(OUTPUT).bib

.PHONY: pdf tex doc clean

pdf: $(OUTPUT).pdf
tex: $(OUTPUT).tex
doc: $(OUTPUT).docx

$(BIB): $(REFDIR) $(MENDELEY)
	cp $(MENDELEY) $@

$(OUTPUT).%: $(PREAMBLE) $(BIB) $(MD) $(PAPERMD)
	$(PC) $(PFLAGS) $(MD) -o $@

$(REFDIR):
	mkdir -p references

clean:
	rm -f $(OUTPUT).*
