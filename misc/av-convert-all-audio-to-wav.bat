@echo off
set output=wav

for %%F in (*.mp3) do (ffmpeg -i "%%~nF.mp3" "%%~nF.%output%")
for %%F in (*.m4a) do (ffmpeg -i "%%~nF.m4a" "%%~nF.%output%")
for %%F in (*.webm) do (ffmpeg -i "%%~nF.webm" "%%~nF.%output%")
pause