.. Copyright © 2012-2013 Martin Ueding <dev@martin-ueding.de>

###############
ThinkPad Rotate
###############

:License (Code): GPLv2_
:License (Text): CC-BY_
:Tags: Bash, ThinkPad, Lenovo, Helix

.. contents::
    :local:

This project contains a set of scripts and instructions for accessing all of the functionality (particularly tablet functionality) of the Lenovo ThinkPad Helix.  Much of the content was derived from the extremely helpful project ``think-rotate`` maintained by Martin Ueding.

The ThinkPad Helix has relatively few dedicated buttons, compared to past ThinkPad models - particularly tablets.  The buttons currently mapped are:

In short, this project fixes or improves the following:

#. Rotation of the internal screen and any Wacom touch and pen input devices
   using the bezel buttons.

#. Fixes small bugs involved in getting proper touchscreen event 
   handling working.


the scripts
===========

think-rotate
------------

With this script, you can rotate the screen in any direction you like and it
will also rotate the pen and touch input.

It will also disable the track point (the xinput id is automatically queried)
so that the back of the screen does not move your mouse if there is any force
on the side of the screen.


the Ubuntu applications
======================

helix-rotate
-----------

This Ubuntu application will toggle the screen orientation between portrait/landscape mode). Typically this is the functionality that one will want to move from keyboard to tablet mode.


helix-rotate-left
----------------

This application provides the ability to sequentially rotate through the different orientations, stepping by 90 degree rotations.  This will give more control over the orientation.

This script is also provided to show how one might create applications that more precisely control the screen orientation (rather than just toggling).


Fixes for quirky problems
-------------------------

The X-server evdev input driver that ships with Ubuntu 13.04 will occasionally cease processing touch down events (it will still process touch up events, though, for whatever reason).  This bug will render the touch interface both frustrating and pointless.  To fix this, all that appears to be required is to install a more recent version of the X-server evdev input driver.  The details about how to do this will be written up in a blog entry and linked from here.


Installation
============

Type::

    # make install

This will install the scripts to ``/usr/bin/`` and add the necessary hooks so
that they are run automatically. It also installs a script in ``/etc/init.d/``
that fixes the key codes for the bezel keys so that you can use them for things
such as running ``think-rotate``.

If you want to have the manual pages installed, type ``make`` before you run
``make install``. This needs to have ``rst2man`` from ``python-docutils``
installed.

Usage
=====

Please see the individual manual pages for details on each program:

- helix-rotate.1.rst

License
=======

This entire project is licensed under GPL Version 2.

Contact
=======

My name is <a href="http://www.derekruths.com">Derek Ruths</a>. Please feel free to <a href="mailto:druths@networkdynamics.org">contact me</a> with any questions, issues, or feature requests.  I'll be continuing to work on adding support for additional features of the helix over time.

.. vim: spell
