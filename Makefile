.PHONY: all install uninstall

PREFIX=/usr/local

all: stallman.dat

stallman.dat: stallman
	strfile stallman stallman.dat

install: stallman.dat
	install -D -m644 rms.cow $(DESTDIR)/usr/share/cows/rms.cow
	install -D -m644 stallman $(DESTDIR)/usr/share/fortune/stallman
	install -D -m644 stallman.dat $(DESTDIR)/usr/share/fortune/stallman.dat
	install -D -m755 rmssay $(DESTDIR)$(PREFIX)/bin/rmssay

uninstall:
	rm $(DESTDIR)/usr/share/cows/rms.cow
	rm $(DESTDIR)/usr/share/fortune/stallman
	rm $(DESTDIR)/usr/share/fortune/stallman.dat
	rm $(DESTDIR)$(PREFIX)/bin/rmssay
