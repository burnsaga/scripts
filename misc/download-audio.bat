@ECHO OFF
TITLE Download Audio (YouTube/Soundcloud, best quality)
:: Prompt user for URL
:a
SET /p url=Enter the URL to download: 
:: Call youtube-dl to download audio in the best quality available
youtube-dl %url% -f bestaudio
GOTO a