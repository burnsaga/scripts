@echo off
title Download Video (YouTube, best quality)
:: Prompt user for URL
:a
set /p url=Enter the URL to download: 
:: Call youtube-dl to download YouTube video
youtube-dl %url%
goto a