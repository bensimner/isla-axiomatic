.PHONY: all clean

all: manual.html

manual.html: *.adoc *.png
	asciidoctor manual.adoc -a data-uri

clean:
	rm manual.html