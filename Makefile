PC=pandoc
PFLAGS=--latex-engine=xelatex --chapters -H includes/preamble.tex -V documentclass=book

MDDIR=markdown/
MD=$(addprefix $(MDDIR),title.md summary.md toc.md intro.md chapter2.md chapter3.md)

OUTPUT=thesis

pdf: $(OUTPUT).pdf
tex: $(OUTPUT).tex

$(OUTPUT).pdf: $(MD)
	$(PC) $(PFLAGS) $(MD) -o $@

$(OUTPUT).tex: $(MD)
	$(PC) $(PFLAGS) $(MD) -o $@

clean:
	rm -f $(OUTPUT).{pdf,tex}
