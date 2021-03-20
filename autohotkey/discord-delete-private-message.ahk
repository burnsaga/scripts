#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ref: https://www.youtube.com/watch?v=7vYQATyqpos - The Fastest Way to Delete Your DISCORD PRIVATE MESSAGES

^j::

Loop, 50
{
    send, {Up}
    send, ^a
    send, {BS}
    send, {Enter}
    send, {Enter}
    sleep, 500
}
Return