PC=pandoc
PFLAGS=--latex-engine=xelatex -f latex --chapters --template=templates/default.latex -H includes/preamble.tex -V documentclass=book
MDFLAGS=-t latex --chapters
TEXFLAGS=-t latex --chapters --template=templates/default.latex -H includes/preamble.tex -V documentclass=book

TEMPLATE=thesis_template.tex

MDDIR=markdown/
MD=$(addprefix $(MDDIR),title.md summary.md toc.md intro.md chapter2.md chapter3.md)

TEXDIR=tex/
TEX=$(addprefix $(TEXDIR),$(notdir $(MD:.md=.tex)))

OUTPUT=thesis

pdf: $(OUTPUT).pdf
tex: $(OUTPUT).tex

$(OUTPUT).pdf: $(TEXDIR) $(TEX)
	$(PC) $(PFLAGS) $(TEX) -o $@

$(OUTPUT).tex: $(TEXDIR) $(TEX)
	$(PC) $(TEXFLAGS) $(TEX) -o $@

$(TEX): $(MD)
	$(PC) $(MDFLAGS) $(addprefix $(MDDIR),$(notdir $(@:.tex=.md))) -o $@

$(TEXDIR):
	mkdir -p $(TEXDIR)

clean:
	rm -f thesis.pdf
	rm -f thesis.tex
	rm -f tex/*.tex
