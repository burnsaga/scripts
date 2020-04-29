@ECHO OFF
TITLE Download Video (YouTube, best quality)
:: Prompt user for URL
:a
SET /p url=Enter the URL to download: 
:: Call youtube-dl to download YouTube video
youtube-dl %url%
GOTO a