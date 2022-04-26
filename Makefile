all: calculus.pdf emf.pdf  math.pdf  ss.pdf

%.pdf: %.dvi
	dvipdf $<

%.dvi: %.tex
	latex $<

clean:
	rm -f *.aux *.dvi *.log *.out *.toc
