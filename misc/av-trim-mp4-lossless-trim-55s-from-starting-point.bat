@ECHO OFF
TITLE Trim 55sec from a starting time (from a file 'input.mp4')
:: ref: https://www.arj.no/2018/05/18/trimvideo/

:: Prompt user
SET /p trim_start=Enter the start time (e.g. 00:01:00) to trim 55 seconds from: 

:: Run script and create output.mp4
ffmpeg -i input.mp4 -ss %trim_start% -t 00:00:55 -c:v copy -c:a copy output.mp4