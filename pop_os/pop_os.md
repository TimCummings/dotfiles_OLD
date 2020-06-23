# Notes and Observations from Installing Pop!_OS


## Things to Install


### Packages

`xargs -a packages.txt sudo apt-get install`


### Other

* [Source Code Pro font](https://fonts.google.com/specimen/Source+Code+Pro)
  * extract to `/usr/share/fonts/opentype/source-code-pro/`

* install Gnome Tweaks and set:
  * Miscellaneous compatibility options
    * Both Shift together enable Caps Lock
  * Layout of numeric keypad (to properly produce QMK numpad codes in terminal)
    * Unicode additions (arrows and math operators; math operators on default level)

* Gnome Shell Extensions browser extension
* PDFMod - good for light PDF adjusting, similar to Preview

* Logitech mouse driver (middle click and side buttons don't work)
  * backend/service: https://github.com/libratbag/libratbag
  * GUI: https://github.com/libratbag/piper/


## Settings to change

* increase key repeat speed
  * Settings
  * Universal Access
  * Repeat Keys


## Keybindings

* toggle maiximization state: Super + z
* Move window to workspace n: Shift + Super + n
* Move to workspace n: Ctrl + Super + n

## Bugs to Fix

* won't wake after suspend; fix with `sudo kernelstub -a "nomodeset"`


## Old:

*Thumbdrive format cannot be `exFAT`; Pop!_OS does not provide `exFAT` reading functionality by default due to patent/rights issues.


### Display

**Update**: This was fixed by disabling the Auto HiDPI in Gnome's Settings.
Changes to display settings are lost on logout/reboot. Still working on this. Settings can be applied from terminal with:
* single display: `xrandr --output eDP-1 --mode 1920x1200`
* dual display (Samsung 27): `xrandr --output eDP-1 --mode 1920x1200`
