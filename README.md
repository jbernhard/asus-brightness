# asus-brightness

A simple helper script for screen and keyboard backlight on an Asus UX31A laptop.  Created for Arch linux.


## Usage

* Build and install the package.
* Enable the systemd service, `systemctl enable asus-brightness`.  All it does is grant user write access to keyboard backlight brightness.
* Control keyboard brightness with `asus-brightness kb (min|max|-|+|<0-3>)`.  There are only four brightness levels, 0 to 3.  min is an
alias for 0, max is an alias for 3.  Use +/- to increment/decrement (personally I have assigned window manager shortcuts for this).  Read
the current brightness with `asus-brightness kb` (no additional argument).
* Screen brightness keys should have already worked.  All this does is provide a shortcut to read the brightness percentage, `asus-brightess
screen`.  I suggest adding `Option "Backlight" "intel_backlight"` in xorg.conf.d.
