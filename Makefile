SHELL = /bin/bash

.PHONY: all install clean

all:
	make -C bin
	make -C desktop
	make -C doc

install:
	make -C bin install
	make -C desktop install
	make -C doc install

clean:
	make -C bin clean
	make -C desktop clean
	make -C doc clean
