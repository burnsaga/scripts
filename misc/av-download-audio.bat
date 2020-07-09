@echo off
title Download Audio (YouTube/Soundcloud, best quality)
:: Prompt user for URL
:a
set /p url=Enter the URL to download: 
:: Call youtube-dl to download audio in the best quality available
youtube-dl %url% -f bestaudio
goto a