SHELL = /bin/bash

.PHONY: all install clean

desktopfiles = $(wildcard *.desktop)
iconfiles = $(wildcard *.png)

all:

install:
	install -d "$(DESTDIR)/usr/share/applications/"
	for desktopfile in $(desktopfiles); do \
		install -m 644 "$$desktopfile" -t "$(DESTDIR)/usr/share/applications/"; \
		done
	install -d "$(DESTDIR)/usr/share/pixmaps/"
	for iconfile in $(iconfiles); do \
		install -m 644 "$$iconfile" -t "$(DESTDIR)/usr/share/pixmaps/"; \
		done

clean:
