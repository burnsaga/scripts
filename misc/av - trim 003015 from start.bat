@ECHO OFF
TITLE Trim 00:30:15 from the start (from a file 'input.flv')

:: Run script and create output file
ffmpeg -i input.flv -ss 00:00:00 -to 00:30:15 -c:v copy -c:a copy output.flv