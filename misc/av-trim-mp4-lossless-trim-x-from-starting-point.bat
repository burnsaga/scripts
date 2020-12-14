@ECHO OFF
TITLE Trim X amount from a start time (from a file 'input.mp4')
:: ref: https://www.arj.no/2018/05/18/trimvideo/

:: Prompt user for start time
SET /p trim_start=Enter the start time to trim from (in hh:mm:ss format e.g. 00:00:30): 

:: Prompt user for how long file should be
SET /p trim_amount=Enter the desired length the new file (e.g. 00:01:00):

:: Run script and create output.mp4
ffmpeg -i input.mp4 -ss %trim_start% -t %trim_amount% -c:v copy -c:a copy output.mp4