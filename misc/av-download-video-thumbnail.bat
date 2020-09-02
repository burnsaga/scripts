@echo off
title Download Video thumbnail (YouTube)
:: Prompt user for URL
:a
set /p url=Enter the URL of video thumbnail to download: 
:: Call youtube-dl to download YouTube video thumbnail
youtube-dl %url% --write-thumbnail
goto a