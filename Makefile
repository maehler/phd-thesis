PC=pandoc

MDDIR=markdown
MD=$(addprefix $(MDDIR)/,title.md summary.md toc.md intro.md chapter2.md \
	chapter3.md references.md)
PREAMBLE=includes/preamble.tex
MENDELEY=~/Dropbox/mendeley/Thesis.bib
REFDIR=references

PFLAGS=--latex-engine=xelatex --filter pandoc-crossref \
	--chapters --number-sections -H $(PREAMBLE) \
	-V documentclass=book --bibliography=$(REFDIR)/$(OUTPUT).bib

OUTPUT=thesis

BIB=$(REFDIR)/$(OUTPUT).bib

pdf: $(OUTPUT).pdf
tex: $(OUTPUT).tex
doc: $(OUTPUT).docx

$(BIB): $(REFDIR) $(MENDELEY)
	cp $(MENDELEY) $@

$(OUTPUT).%: $(PREAMBLE) $(BIB) $(MD)
	$(PC) $(PFLAGS) $(MD) -o $@

$(REFDIR):
	mkdir -p references

clean:
	rm -f $(OUTPUT).*
