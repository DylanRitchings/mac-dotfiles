do shell script "open '/System/Volumes/Data/Applications/Focusrite Control.app'"
delay 0.4
tell application "System Events" to keystroke "l" using command down
delay 0.5
tell application "System Events" to keystroke "g" using {command down, shift down}
delay 0.6

tell application "System Events"
	key code 51 (* press delete *)
	key code 51 (* press delete *)
end tell

delay 0.6

tell application "System Events"
	set textToType to "/Users/dylan/.hammerspoon/direct_off/direct_off.ff"
	keystroke textToType
	key code 36 (* press enter *)
end tell

delay 0.2
tell application "System Events"
	key code 36 (* press enter *)
end tell
