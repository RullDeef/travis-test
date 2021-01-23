#!/usr/bin/make -f
prefix := /usr/local

all : travistest

travistest : main.c
	$(CC) -std=c99 -o $@ $^

clean :
	rm travistest

install : travistest
	install travistest $(DESTDIR)$(prefix)/bin/travistest

uninstall :
	rm $(DESTDIR)$(prefix)/bin/travistest
