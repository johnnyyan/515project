# run make x or make to build pdf file

final: final.tex
	latex final.tex;
	latex final.tex;	# for labels to show up
	dvips -o final.ps final.dvi;
	ps2pdf -dCompatibilityLevel=1.4 final.ps
	rm -f *~ *.aux *.bbl *.blg *.dvi *.log *.out *.ps *.bak *final.bib
