HTMLPATH=html
STGPATH=stguide
HTMLFILE=$(HTMLPATH)/index.html
HTMLUFLAGS=-h -o $(HTMLFILE)
STGFLAGS=-s

LINEAPATH=linea
LINEAFILES=$(LINEAPATH)/linea.u $(LINEAPATH)/init.ui $(LINEAPATH)/putpixel.ui \
	$(LINEAPATH)/getpixel.ui $(LINEAPATH)/line.ui $(LINEAPATH)/hline.ui \
	$(LINEAPATH)/fillrect.ui $(LINEAPATH)/fillpoly.ui \
	$(LINEAPATH)/bitblt.ui $(LINEAPATH)/textblt.ui \
	$(LINEAPATH)/shmouse.ui $(LINEAPATH)/hdmouse.ui \
	$(LINEAPATH)/trmouse.ui $(LINEAPATH)/udrsprit.ui \
	$(LINEAPATH)/drsprite.ui $(LINEAPATH)/cpraster.ui \
	$(LINEAPATH)/seedfill.ui

#
all: $(STGPATH)/linea.stg

#
$(STGPATH)/linea.stg: e_linea.u $(LINEAFILES)
	udo $(STGFLAGS) -o $(STGPATH)/linea.stg e_linea.u

#
clean:
	rm $(STGPATH)/*
	rm $(HTMLPATH)/*
