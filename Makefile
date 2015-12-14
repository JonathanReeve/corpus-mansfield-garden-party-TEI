default: main.html show

header.html: README.md
	pandoc -o $@ $^ --smart

garden-party.html: garden-party.xsl garden-party.xml
	xsltproc $^ > $@

main.html: garden-party.html header.html
	sed -e '/INSERTHEADERHERE/{r header.html' -e 'd}' garden-party.html > main.html

show: 
	gvfs-open main.html
clean: 
	rm garden-party.html header.html main.html
