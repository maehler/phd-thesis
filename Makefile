PC=pandoc

MDDIR=markdown
MD=$(addprefix $(MDDIR)/,title.md summary.md toc.md intro.md chapter2.md \
	chapter3.md references.md)
MENDELEY=~/Dropbox/mendeley/Thesis.bib
REFDIR=references

PFLAGS=--latex-engine=xelatex --filter pandoc-fignos \
	--chapters -H includes/preamble.tex \
	-V documentclass=book --bibliography=$(REFDIR)/$(OUTPUT).bib

OUTPUT=thesis

BIB=$(REFDIR)/$(OUTPUT).bib

pdf: $(BIB) $(OUTPUT).pdf
tex: $(BIB) $(OUTPUT).tex

$(BIB): $(REFDIR) $(MENDELEY)
	cp $(MENDELEY) $@

$(OUTPUT).pdf: $(MD)
	$(PC) $(PFLAGS) $(MD) -o $@

$(OUTPUT).tex: $(MD)
	$(PC) $(PFLAGS) $(MD) -o $@

$(REFDIR):
	mkdir -p references

clean:
	rm -f $(OUTPUT).pdf
	rm -f $(OUTPUT).tex
