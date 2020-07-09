@echo off
set input=webm
set output=mp4

for %%F in (*.%input%) do (ffmpeg -i %%F -qscale 0 "%%~nF.%output%")