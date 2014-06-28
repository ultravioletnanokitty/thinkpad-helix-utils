############
helix-rotate
############

********************************************
ThinkPad Helix Tablet screen rotation script
********************************************

:Author: ultraviolet <ultravioletnanokitty@gmail.com>
:Date: 2014-06-28
:Manual section: 1

SYNOPSIS
========

:: helix-rotate [direction]

DESCRIPTION
===========

This script will rotate the Lenovo ThinkPad Helix's display, pen, and touch 
to the orientation specified. 

If the current orientation is specified, the screen will be reverted to the
orientation listed in the config file (normal by default). That way, you can 
use this script as a toggle.

If no orientation is specified, the screen will be rotated clockwise 90 degrees.

You can also place hook scripts in a configurable location, to be run before or
after the screen is rotated.

OPTIONS
=======

orientation
    The orientation can be any of:

-	normal (or none)
-	right (or cw)
-	inverted (or half or flip)
-	left (or ccw)

    Since ``xsetwacom`` and ``xrandr`` use different orientation names, both
    sets are accepted for convenience.

EXIT STATUS
===========

0
    Everything went okay.

2
    User specified a direction that is not known.


FILES
=====

Config
------

The global config file for all of the ThinkPad Helix tools (including this one)
is ``$HOME/.config/thinkpad-helix-utils/config``. Possible options include:

``output_name``
	output used by the ThinkPad Helix's LCD

``touch_name``
	the xinput name of the touch digitiser

``toggle_rotation``
	the rotation to toggle to if current orientation is specified
	
``prerotate_hook``
	the location of the script to run before rotating the screen

``postrotate_hook``
	the location of the script to run after rotating the screen

Hooks
-----

The default locations of the pre- and post-rotate hooks are:

- ``~/.config/thinkpad-helix-utils/prerotate.sh``
- ``~/.config/thinkpad-helix-utils/postrotate.sh``

EXAMPLE
=======

To rotate the screen to the right (and then inverted, left, normal, and so on)::

    helix-rotate

To specify the direction (left in this case)::

    helix-rotate left

SEE ALSO
========

- `GitHub Repository`_

.. _`GitHub Repository`: https://github.com/ultravioletnanokitty/thinkpad-helix-utils
