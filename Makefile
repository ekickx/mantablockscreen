ifeq ($(PREFIX),)
	PREFIX := /usr
endif

.PHONY: install
install:
	install -d $(DESTDIR)$(PREFIX)/local/bin
	install -d $(DESTDIR)$(PREFIX)/share/mantulassets
	install -m 755 mantullockscreen $(DESTDIR)$(PREFIX)/local/bin/mantullockscreen
	install -m 755 mantulassets/* $(DESTDIR)$(PREFIX)/share/mantulassets/

.PHONY: uninstall
uninstall:
	test -e $(DESTDIR)$(PREFIX)/local/bin/mantullockscreen && rm $(DESTDIR)$(PREFIX)/local/bin/mantullockscreen
	test -d $(DESTDIR)$(PREFIX)/share/mantulassets && rm -rf $(DESTDIR)$(PREFIX)/share/mantulassets || exit 0
