@echo off
title Download YouTube/Soundcloud audio (best quality)
:: Prompt user for URL
:a
set /p url=Enter the URL to download: 
:: Call youtube-dl to download YouTube audio
youtube-dl %url% -f bestaudio
goto a