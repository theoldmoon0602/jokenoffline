build: offline.tex
	platex offline.tex && dvipdf offline.dvi offline.pdf
view: build
	google-chrome offline.pdf
clean:
	ls | grep -v .tex | grep -v Makefile | xargs rm -rf

