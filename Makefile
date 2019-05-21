TARGET := bibliography.md

bibliography.md : bibliography-template.txt znk-bibliography.bib apa.csl
	pandoc -t html --filter pandoc-citeproc -o $@ $<

bibliography.tex : bibliography-template.txt znk-bibliography.bib apa.csl
	pandoc --standalone -t latex --filter pandoc-citeproc -o $@ $<

bibliography.pdf : bibliography.tex
	pandoc -t latex -o $@ $<
