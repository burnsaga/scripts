@echo off
set input=7z
set output=rar

for %%F in (*.%input%) do ( "C:\Program Files\7-Zip\7z.exe" x -y -o"%%F_tmp" "%%F" * & pushd %%F_tmp & "C:\Program Files\7-Zip\7z.exe" a -y -r -tzip ..\"%%~nF".%output% * & popd & rmdir /s /q "%%F_tmp" )