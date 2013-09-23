# Copyright © 2012-2013, Derek Ruths <druths@networkdynamics.org>

# This script was derived extensively from one developed and provided by Martin Ueding <dev@martin-ueding.de>

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
	make -C lib install

clean:
	make -C bin clean
	make -C desktop clean
	make -C doc clean
