PC=pandoc

MDDIR=markdown
MD=$(addprefix $(MDDIR)/,title.md summary.md toc.md intro.md chapter2.md \
	chapter3.md references.md)
MENDELEY=~/Dropbox/mendeley/Thesis.bib
REFDIR=references

PFLAGS=--latex-engine=xelatex --chapters -H includes/preamble.tex \
	-V documentclass=book --bibliography=$(REFDIR)/$(OUTPUT).bib

OUTPUT=thesis

pdf: bib $(OUTPUT).pdf
tex: bib $(OUTPUT).tex

bib: $(REFDIR) $(MENDELEY)
	cp $(MENDELEY) $(REFDIR)/$(OUTPUT).bib

$(OUTPUT).pdf: $(MD)
	$(PC) $(PFLAGS) $(MD) -o $@

$(OUTPUT).tex: $(MD)
	$(PC) $(PFLAGS) $(MD) -o $@

$(REFDIR):
	mkdir -p references

clean:
	rm -f $(OUTPUT).{pdf,tex}
