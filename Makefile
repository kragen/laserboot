laser000.pdf: laser000.ps
	pstopdf $< $@
laser000.dxf: laser000.ps
	pstoedit -f dxf $< $@
