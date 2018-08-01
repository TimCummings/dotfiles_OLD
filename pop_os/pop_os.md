# Notes and Observations from Installing Pop!_OS

## Computer: Retina Macbook Pro (Late 2013)

### Drivers
The wifi driver is not included by default. Have the most up-to-date version downloaded onto a thumbdrive* and ready to install. At the time of this note, this driver can be found here: [https://pkgs.org/download/bcmwl-kernel-source]

*Thumbdrive format cannot be `exFAT`; Pop!_OS does not provide `exFAT` reading functionality by default due to patent/rights issues.

### Display
**Update**: This was fixed by disabling the Auto HiDPI in Gnome's Settings.
Changes to display settings are lost on logout/reboot. Still working on this. Settings can be applied from terminal with:
* single display: `xrandr --output eDP-1 --mode 1920x1200`
* dual display (Samsung 27): `xrandr --output eDP-1 --mode 1920x1200`

## Things to Install
* Gnome Tweaks
* Gnome Shell Extensions browser extension
* Dash to Dock extension
* PDFMod - good for light PDF adjusting, similar to Preview
* work printer:
  - download driver from website as usual
  - `sudo xeroxprtmgr` to get to Xerox-specific advanced settings and setup accounting
