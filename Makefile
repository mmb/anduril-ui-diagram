
SRCS = $(wildcard *.dot)
PDFS = $(patsubst %.dot,%.pdf,$(SRCS))
PNGS = $(patsubst %.dot,%.png,$(SRCS))

all: pdfs pngs

pdfs: $(PDFS)

pngs: $(PNGS)

%.pdf: %.dot
	dot -Tpdf -o $@ $<

%.png: %.dot
	dot -Tpng -o $@ $<

clean:
	rm -fv *.pdf *.png
