TITLE Unzip All (.zip, .7z, .rar)
:: Recursively extract from archive files with 7Zip to the same folder the archive file is located (.zip, .7z, .rar)
:: ref: https://superuser.com/questions/1224218/batch-extract-files-from-every-archive-with-7-zip

@ECHO ON

FOR /F "TOKENS=*" %%F IN ('DIR /S /B "*.zip"') DO "C:\Program Files\7-Zip\7z.exe" x "%%~fF" -o"%%~pF\"
FOR /F "TOKENS=*" %%F IN ('DIR /S /B "*.7z"') DO "C:\Program Files\7-Zip\7z.exe" x "%%~fF" -o"%%~pF\"
FOR /F "TOKENS=*" %%F IN ('DIR /S /B "*.rar"') DO "C:\Program Files\7-Zip\7z.exe" x "%%~fF" -o"%%~pF\"

EXIT