toggle := 0

F1::
MouseGetPos, MouseX, MouseY
if toggle := !toggle
 gosub, MoveTheMouse
else
 SetTimer, MoveTheMouse, off
return

MoveTheMouse:
MouseMove, 960, 540
SetTimer, MoveTheMouse, -7000  ; every 7 seconds 
MouseMove, %MouseX%, %MouseY%
return