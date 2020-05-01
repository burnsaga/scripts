title Unzip All (.zip, .7z, .rar)
:: Recursively extract from archive files with 7Zip to the same folder the archive file is located (.zip, .7z, .rar)
:: ref: https://superuser.com/questions/1224218/batch-extract-files-from-every-archive-with-7-zip

@echo off

for /F "TOKENS=*" %%F in ('DIR /S /B "*.zip"') do "C:\Program Files\7-Zip\7z.exe" x "%%~fF" -o"%%~pF\"
for /F "TOKENS=*" %%F in ('DIR /S /B "*.7z"') do "C:\Program Files\7-Zip\7z.exe" x "%%~fF" -o"%%~pF\"
for /F "TOKENS=*" %%F in ('DIR /S /B "*.rar"') do "C:\Program Files\7-Zip\7z.exe" x "%%~fF" -o"%%~pF\"

exit