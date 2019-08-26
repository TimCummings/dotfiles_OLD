
# QMK Basics

### Only Graphical Configurator

https://config.qmk.fm

I haven't used this yet, no idea if it works. But the layout is decent.


## Background

Full guide here: https://docs.qmk.fm/#/newbs

Requires:
* QMK Toolbox be installed (used to flash firmware)
* QMK Firmware env be setup


Usage:
* Create a layout directory in your keyboard's keymap directory, e.g. `mkdir ~/qmk_firmware/keyboards/keebio/iris/keymap/timcummings`.
* Copy files (`config.h`, `keymap.c`, `rules,mk`) from the keyboard's default layout directory for a good starting point.
* Edit the `keymap.c` file to your liking.
* Return to the root `qmk_firmware` directory.
* Build your layout: `make keebio/iris/rev3:timcummings`. This creates a similarly named `.hex` file in the `qmk_firware` directory.
* Provide the `.hex` file to QMK Toolbox.