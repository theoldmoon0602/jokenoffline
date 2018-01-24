TEX=offline
build: offline.tex
	platex $(TEX).tex && dvipdf $(TEX).dvi $(TEX).pdf
view: build
	google-chrome $(TEX).pdf
clean:
	ls | grep -v .tex | grep -v Makefile | xargs rm -rf

