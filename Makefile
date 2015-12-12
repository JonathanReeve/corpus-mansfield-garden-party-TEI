default: main.html

header.html: header.md
	pandoc -o $@ $^

garden-party.html: garden-party.xsl garden-party.xml
	xsltproc $^ > $@

main.html: garden-party.html header.html
	sed -e '/INSERTHEADERHERE/{r header.html' -e 'd}' garden-party.html > main.html

clean: 
	rm garden-party.html header.html main.html
