.PHONY: all

all: install

install:
	cp ./rms.cow /usr/share/cowsay/cows
	strfile stallman stallman.dat
	cp ./stallman /usr/share/fortune
	cp ./rmssay /bin/
