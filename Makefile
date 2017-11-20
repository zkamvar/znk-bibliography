TARGET := bibliography.md

bibliography.md : bibliography-template.txt znk-bibliography.bib apa.csl
	pandoc -t html --filter pandoc-citeproc -o $@ $<
