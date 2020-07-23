# License

This work is an iteration over the scripts from adegard (https://github.com/adegard/AHK_SCRIPTS)</br>
Work request by Divertispec (https://www.divertispec.ca/)

GPLv3 because the original scripts uses this license </br>
Modification over the original scripts has been listed below

# Mouseclick-macro-recorder

Mouseclick-macro-recorder is a Automation Tool and Script Generator </br>
It's goal is to aid the user to record mouseclick macro using the Autohotkey platform.

It provides :
- Simple UI that allow the user to specify the hot key that is going to be link with the macro
- Disable double-clicks to prevent false-positive when using single-click-type macros
- Enable the macro to be use ONLY on the same window it was recorded (useful when using the same shortcuts with other programs)
- Easy to exit all macros using <b>Esc</b> key

<b>turbo_macro_recorder</b> use fix time between clicks </br>
<b>realtime_macro_recorder</b> simulate (almost) exactly the movement of the mouse while recording

# Installation

- Install AutoHotKey : https://autohotkey.com/
- Download or clone the scripts from the repository

# How-to-use

- <b>Double-click</b> on either <b>turbo_macro_recorder.ahk</b> or <b>realtime_macro_recorder.ahk</b>
- <b>Ctrl+R</b> to start the program
- Write the hot key using Autohotkey nomanclature and press Ok
- Click on things/move the mouse
- <b>Ctrl+D</b> to stop the program
- Double-click on <b>macro.ahk</b> to activate
- Press your hot key to use your macro 

# Autohotkey shortcut nomanclature and exemples

- Modifier : # (Win), ! (Alt), ^ (Ctrl), + (Shift), etc.
- Exemple : #q:: or ^t:: or ^!s:: are valids shortcuts
- Docs : https://www.autohotkey.com/docs/Hotkeys.htm

# Troubleshooting and tips

- Change the name of <b>macro.ahk</b> when you're satisfied with the macro since it override the file
- Make sure the macro is activated
- Make sure only one of the recorder is active at the same time
- Exit the recorder by right-clicking on the icon in the toolbar and choosing <b>Exit</b>
- Read the documentation on autohotkey
- Read the code and modify it as you wish :)
