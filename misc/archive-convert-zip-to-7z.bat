@echo off
:: ref: https://superuser.com/questions/645730/batch-repacking-zip-archives-into-7z

set input=zip
set output=7z

for %%F in (*.%input%) do ( "C:\Program Files\7-Zip\7z.exe" x -y -o"%%F_tmp" "%%F" * & pushd %%F_tmp & "C:\Program Files\7-Zip\7z.exe" a -y -r -t%output% ..\"%%~nF".%output% * & popd & rmdir /s /q "%%F_tmp" )