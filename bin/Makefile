SHELL = /bin/bash

.PHONY: all install clean

scripts = $(wildcard helix-*)

all:

install:
	install -d "$(DESTDIR)/usr/bin/"
	for script in $(scripts); do \
		install "$$script" -t "$(DESTDIR)/usr/bin/"; \
	done

clean:
