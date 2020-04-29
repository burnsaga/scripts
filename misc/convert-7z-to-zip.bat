set input=7z
set output=zip

for %%F in (*.%input%) do ( "C:\Program Files\7-Zip\7z.exe" x -y -o"%%F_tmp" "%%F" * & pushd %%F_tmp & "C:\Program Files\7-Zip\7z.exe" a -y -r -t%output% ..\"%%~nF".%output% * & popd & rmdir /s /q "%%~nF.%%~nF_tmp" )