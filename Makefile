laser000.pdf: laser000.ps
	pstopdf $< $@  # I think pstopdf comes from the context package, but ps2pdf doesn’t work with weird paper sizes
laser000.dxf: laser000.ps
	pstoedit -f dxf $< $@
