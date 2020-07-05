.PHONY: all install uninstall

all: stallman.dat

stallman.dat: stallman
	strfile stallman stallman.dat

install:
	install -D -m644 rms.cow $(DESTDIR)/usr/share/cows
	install -D -m644 stallman $(DESTDIR)/usr/share/fortune
	install -D -m644 stallman.dat $(DESTDIR)/usr/share/fortune
	install -D -m755 rmssay $(DESTDIR)/usr/local/bin

uninstall:
	rm $(DESTDIR)/usr/share/cows/rms.cow
	rm $(DESTDIR)/usr/share/fortune/stallman
	rm $(DESTDIR)/usr/share/fortune/stallman.dat
	rm $(DESTDIR)/usr/local/bin/rmssay
