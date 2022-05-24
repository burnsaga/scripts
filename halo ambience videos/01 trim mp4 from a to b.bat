@ECHO OFF
TITLE Trim from A to B (from a file 'input.mp4')
:: ref: https://www.arj.no/2018/05/18/trimvideo/

:: Prompt user
SET /p trim_start=Enter the start time to trim from (hh:mm:ss e.g. 00:01:00): 
SET /p trim_end=Enter the end time to trim from (hh:mm:ss):

:: Run script and create output file
ffmpeg -i input.mp4 -ss %trim_start% -to %trim_end% -c:v copy -c:a copy output.mp4