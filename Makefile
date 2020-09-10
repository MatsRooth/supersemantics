%.tag: %.bib
	cat $*.bib | egrep '^@' | tr '[{,]' '[\11\11]' | cut -f2 > $*.tag

%.html: %.bib
	bibtex2html -a -doi-prefix http://hdl.handle.net/ $*.bib


super.bib: abusch.bib greenberg.bib maier.bib patel.bib schlenker.bib
	bibtool -s -d abusch.bib greenberg.bib maier.bib patel.bib schlenker.bib > super.bib

