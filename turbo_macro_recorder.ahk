version := "2.5"

#NoEnv  					; Recommended for performance and compatibility with future AutoHotkey releases.uytu
#SingleInstance Force 		; Allow only one running instance of script.
SendMode Input  			; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; Settings

mouseButton := "LButton"
sleepBetweenClick := 150
sleepBetweenUpAndDownClick := 23
outputfile := "macro.ahk"
defaultHotKey := "#q::"

; Variables

recording := true
posX := []
posY := []
i := 0
timeBetweenClick := 250
thisClick := 500
lastClick := 249

; ********************************
; Start Recording
^r::
WinGetClass, ActiveWindow, A

; Gui
InputBox, hotKey, Macro Recorder %version%, Please enter shortcut code., , 200, 125


; Default hotkey
if(hotKey = ""){
	hotKey := defaultHotKey
}

StartTime := A_TickCount

while(recording = true)
{
	if(i=0)
	{
		FileDelete, %outputfile%
		FileAppend, 
			(
			`;Version: %version%	
			`n#NoEnv
			`nSetWorkingDir %A_ScriptDir%
			`nSendMode Input
			`n#SingleInstance Force
			`nSetTitleMatchMode 2
			`n#WinActivateForce
			`nSetControlDelay 1
			`nSetWinDelay 0
			`nSetKeyDelay -1
			`nSetMouseDelay -1
			`nSetBatchLines -1
			`n#IfWinActive, ahk_class %ActiveWindow%
			`n%hotKey%
			`n; ************************
			`n{
			
			), %outputfile% 
		}
	
		MouseGetPos, x, y
		posX[i] := x
		posY[i] := y

		; Check click 
		if(GetKeyState(mouseButton, "P"))
		{
			thisClick := A_TickCount
			if(thisClick-lastClick > timeBetweenClick)
			{
				FileAppend, 
					(
					`nClick, , down, %x%, %y%
					`nsleep %sleepBetweenUpAndDownClick%
					`nClick, up
					`nsleep %sleepBetweenClick%
					), %outputfile%

					lastClick := thisClick
			}
		}
		i++
	}
return

^d::  ; Exit recording
recording := false

DetectHiddenWindows, On 
;WinClose, %A_ScriptDir%\recorde_keys.ahk ahk_class AutoHotkey

FileAppend, 
		(
		`nreturn
		`n}
		`n~Esc::ExitApp
		`nExitApp
		), %outputfile% 
Gui, cancel	
Reload
return

; ********************************