
[comment]: # (README.md)

# README for Massdrop Alt Keyboard Updates

[MDLoader Releases](https://github.com/Massdrop/mdloader/releases/tag/1.0.3)

#### Windows users:

1. Download `mdloader_windows.exe` and `applet-flash-samd51j18a.bin` and put them in the same folder.

#### Linux users:

1. Download `mdloader_linux` and `applet-flash-samd51j18a.bin` and put them in the same folder.
2. `chmod u+x mdloader_linux` to make it executable.

#### Mac users:

1. Download `mdloader_mac` and `applet-flash-samd51j18a.bin` and put them in the same folder. If downloading with Safari, `mdloader_mac` with have a `.dms` extension appended to it. This is fine.
2. `chmod u+x mdloader_mac` to make it executable. (`chmod u+x mdloader_mac.dms` if downloaded from Safari)

[MDLoader Instructions](https://github.com/Massdrop/mdloader)

### tl;dr

1. Follow the instructions here to download the executable for your operating system: https://github.com/Massdrop/mdloader/releases

2. Plug in your keyboard.

3. Press the reset button on your keyboard.

4. In your terminal, change to the directory where you downloaded the executable and applet-*.bin file(s).

5. **Windows** - Run `mdloader_windows.exe --first --download FILE_NAME --restart`. Replace "FILE_NAME" with the filename of your compiled firmware.

**Linux** - Run `mdloader_linux --first --download FILE_NAME --restart`. Replace "FILE_NAME" with the filename of your compiled firmware.

**Mac** - Run `mdloader_mac --first --download FILE_NAME --restart`. If you downloaded with Mac Safari, run `mdloader_mac.dms --first --download FILE_NAME --restart`. Replace "FILE_NAME" with the filename of your compiled firmware.

6. Enjoy (important)
