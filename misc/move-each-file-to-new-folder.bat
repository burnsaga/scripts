:: ref: https://stackoverflow.com/questions/52326060/how-do-i-create-folder-from-file-name-and-move-files-into-folder
@echo off
setlocal EnableExtensions DisableDelayedExpansion
set "SourceDir=C:\Users\god\Desktop\test"
set "DestDir=C:\Users\god\Desktop\test"

for /F "eol=| delims=" %%A in ('dir /B /A-D-H "%SourceDir%\*" 2^>nul') do (
    for /F "eol=| tokens=1 delims=_" %%B in ("%%~nA") do (
        md "%DestDir%\%%B" 2>nul
        move /Y "%SourceDir%\%%A" "%DestDir%\%%B\"
    )
)

endlocal