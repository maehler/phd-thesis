PC=pandoc

MDDIR=markdown
MD=$(addprefix $(MDDIR)/,title.md summary.md acknowledgements.md \
	paper_list.md toc.md) \
	$(wildcard $(MDDIR)/chapter*.*.md) \
	$(MDDIR)/references.md
FIGURES=$(addprefix figures/,placeholder.png nmbu_logo.eps \
	overview.pdf genetic_variation.pdf complexity.pdf \
	transcription.pdf associations.pdf coexpression.pdf)
PREAMBLE=includes/preamble.tex
PAPER_PREAMBLE=includes/paper_preamble.tex
MENDELEY=~/Dropbox/mendeley/Thesis.bib
REFDIR=references

PFLAGS=--latex-engine=pdflatex \
	--filter pandoc-crossref \
	--filter pandoc-citeproc \
	--template templates/template.tex \
	--chapters --number-sections -H $(PREAMBLE) \
	-V documentclass=book \
	-V fontsize=10pt \
	--csl citation-styles/plos.csl \
	--bibliography=$(REFDIR)/$(OUTPUT).bib \
	--include-after-body $(MDDIR)/paper1.md \
	--include-after-body $(MDDIR)/paper2.md \
	--include-after-body $(MDDIR)/paper3.md \
	--include-after-body $(MDDIR)/paper4.md

PAPERMD=$(addprefix $(MDDIR)/, paper1.md paper2.md)

OUTPUT=thesis
BIB=$(REFDIR)/$(OUTPUT).bib

.PHONY: pdf tex doc clean dropbox

pdf: $(OUTPUT).pdf
tex: $(OUTPUT).tex
doc: $(OUTPUT).docx

$(BIB): $(REFDIR) $(MENDELEY)
	cp $(MENDELEY) $@

$(OUTPUT).%: $(PREAMBLE) $(BIB) $(MD) $(PAPERMD) $(FIGURES)
	$(PC) $(PFLAGS) $(MD) -o $@

$(REFDIR):
	mkdir -p references

dropbox: pdf doc
	cp $(OUTPUT).pdf $(OUTPUT).docx ~/Dropbox/projects/systemsgenetics/thesis/

clean:
	rm -f $(OUTPUT).*
